from django.shortcuts import render, redirect, render_to_response
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from .models import *
from django.views.decorators.csrf import csrf_exempt
#from django.shortcuts import get_object_or_404
from django.core import serializers
from django.template import loader, RequestContext
import datetime
import string
import facebook
from random import shuffle
import requests as req
import payment
import re
import os
import json
import tinyurl
#random comment
# Create your views here.

graph = facebook.GraphAPI(access_token=os.environ["FBKEY"], version='2.2')

def handler404(request):
    response = render_to_response('404.html', {}, context_instance=RequestContext(request))
    response.status_code = 404
    return response


def handler500(request):
    response = render_to_response('500.html', {}, context_instance=RequestContext(request))
    response.status_code = 500
    return response



def renderContent(template,request):
	tmp = template
	nav = (loader.get_template('nav.html')).render(request)
	foot = (loader.get_template('footer.html')).render(request)
	tmp = tmp.replace('<div id="navhome"></div>',nav+"<script type='text/javascript' data-cfasync='false'>window.purechatApi = { l: [], t: [], on: function () { this.l.push(arguments); } }; (function () { var done = false; var script = document.createElement('script'); script.async = true; script.type = 'text/javascript'; script.src ='https://app.purechat.com/VisitorWidget/WidgetScript'; document.getElementsByTagName('HEAD').item(0).appendChild(script); script.onreadystatechange = script.onload = function (e) { if (!done && (!this.readyState || this.readyState == 'loaded' || this.readyState == 'complete')) { var w = new PCWidget({c: '513ada6d-8a7b-43d9-8fd9-a063492f4d6b', f: true }); done = true; } }; })();</script><br>")
	tmp = tmp.replace('<div id="footerhome"></div>',foot)
	return tmp

def index(request):
	nisbBulletin = Bulletin.objects.filter(subjectsTo=0).order_by('-id')[:5]
	blrBulletin = Bulletin.objects.filter(subjectsTo=1).order_by('-id')[:5]
	r10Bulletin = Bulletin.objects.filter(subjectsTo=2).order_by('-id')[:5]
	ieeeBulletin = Bulletin.objects.filter(subjectsTo=3).order_by('-id')[:5]
	techNews = Bulletin.objects.filter(subjectsTo=5).order_by('-id')[:5]
	context = {
			'nisbBulletin' : nisbBulletin,
			'blrBulletin' : blrBulletin,
			'r10Bulletin' : r10Bulletin,
			'ieeeBulletin' : ieeeBulletin,
			'techNews' : techNews,
			}
	template = loader.get_template('index.html')
	return HttpResponse(renderContent(template.render(context,request),request))

def events(request):
	dateToday = datetime.date.today()
	events = graph.request("/nieieeestudentbranch/events", {
                "since": "2014-09-01",
                "fields": "id, name, start_time, ticket_uri, description, cover",
        })
	events = events['data']
	pastEvents = []
	presentFutureEvents = []
	for event in events:
		event["start_time"]=datetime.datetime.strptime(event["start_time"], "%Y-%m-%dT%H:%M:%S+0530").date()
		if(dateToday>event["start_time"]):
			pastEvents.append(event)
		else:
			presentFutureEvents.append(event)
	context = {
			'pastEvents' : pastEvents,
			'futureEvents' : presentFutureEvents,
			'allEvents' : events,
		}
	template = loader.get_template('events.html')
	return HttpResponse(renderContent(template.render(context,request),request))


def event_register(request):
	template = loader.get_template('event_register.html')
	successMsg = None
	if request.method == 'GET':
		if 'eventid' in request.GET:
			eid = request.GET["eventid"]
			if 'errorMsg' in request.GET:
				errorMsg = request.GET['errorMsg']
			else:
				errorMsg = None
			context = {'eventid' : eid,
				   'errorMsg' : errorMsg,
				   'successMsg' : successMsg,
				}
		if 'success' in request.GET:
			theURL="https://www.instamojo.com/api/1.1/payment-requests/"+request.GET['payment_request_id']+"/"+request.GET['payment_id']
			theURL = tinyurl.create_one(theURL)
			successMsg = "Done! Note down the URL "+theURL+". Keep the message received as token"
			context = {
				 'eventid' : None,
				 'errorMsg' : None,
				 'successMsg' : successMsg,
				}
	return HttpResponse(renderContent(template.render(context,request),request))

def pay(request):
	if request.method != 'POST':
		return redirect('http://www.nisb.in')
	errorMsg = None
	theType = request.POST.get("type")
	if(theType=="0"):
		try:
			mem = User.objects.get(ieee_num=int(request.POST.get("ieeeno")))
		except User.DoesNotExist:
			mem = None
		print mem
		if (not mem):
			errorMsg = "Invalid IEEE number"
		else:
			buyer = mem.name
			email = mem.emailAddress
			phone = mem.phno
			purpose = mem.sem+" of "+mem.branch
	else:
		buyer = request.POST.get("name")
		phone = request.POST.get("mob")
		purpose = request.POST.get("sem")+" of "+request.POST.get("branch")
		email = request.POST.get("email")
		if(theType=="2" and not re.match(r'[a-zA-Z0-9_.]+@ieee.org$', request.POST.get("email"))):
			errorMsg = "Need an @ieee.org Email. You may contact us."
	if(not errorMsg):
		try:
			event = EventPrice.objects.get(eventid=request.POST.get("eventid"))
		except EventPrice.DoesNotExist:
			return redirect("http://www.nisb.in/events")
		purpose = purpose + " in " + event.event_name
		if(theType == "0"):
			if(mem.isCS):
				amt = event.cs
			else:
				amt = event.ieee
		elif(theType == "1"):
			amt = event.normal
		else:
			amt = event.oth
		if(amt=="0"):
			return redirect(event.altLnk)
		elif(amt=="N/A"):
			context = {
			'eventid' : request.POST.get('eventid'),
			'errorMsg' : "The Maze is not meant for you",
			}
			template = loader.get_template('event_register.html')
			return HttpResponse(renderContent(template.render(context, request), request))
		else:
			context = {
			'purpose': purpose,
                	'amt': amt,
                	'buyer': buyer,
	                'email': email,
        	        'phone': phone,
			"count" : 0,
			}
			return payment.payAmt(context)
	else:
		context = {
		'eventid' : request.POST.get("eventid"),
		'errorMsg' : errorMsg,
		}
		template = loader.get_template('event_register.html')
		return HttpResponse(renderContent(template.render(context,request),request))

def fg(request):
	template = loader.get_template('fg.html')
	return HttpResponse(renderContent(template.render(request),request))

def googleVer(request):
	template = loader.get_template('google761d5d7f07a54c5f.html')
	return HttpResponse(template.render(request))

def roadmap(request):
	template = loader.get_template('roadmap.html')
	return HttpResponse(renderContent(template.render(request),request))

def contact(request):
	template = loader.get_template('contact.html')
	return HttpResponse(renderContent(template.render(request),request))

def cs(request):
	dateToday = datetime.date.today()
        events = graph.request("/nieieeecomputersociety/events", {
                "since": 0,
                "fields": "id, name, start_time, ticket_uri, place, description, cover",
        })
        events = events['data']
        pastEvents = []
        presentFutureEvents = []
        for event in events:
                event["start_time"]=datetime.datetime.strptime(event["start_time"], "%Y-%m-%dT%H:%M:%S+0530").date()
                if(dateToday>event["start_time"]):
                        pastEvents.append(event)
                else:
                        presentFutureEvents.append(event)
        context = {
                        'pastEvents' : pastEvents,
                        'futureEvents' : presentFutureEvents,
                        'allEvents' : events,
                }
        template = loader.get_template('cs.html')
        return HttpResponse(renderContent(template.render(context,request),request))

def wie(request):
	template = loader.get_template('wie.html')
	return HttpResponse(renderContent(template.render(request),request))


def members(request):
	template = loader.get_template('team.html')
	return HttpResponse(renderContent(template.render(context,request),request))

def about(request):
	template = loader.get_template('about.html')
	return HttpResponse(renderContent(template.render(request),request))

def gallery(request):
#    pics = galleryImages.objects.all().order_by('?')[:48]
    bheek = graph.request("/691179510958504/photos",    {
        "since": 0,
        "fields": "name, images",
    })
    bheekSource = []
    bheek = bheek["data"]
    shuffle(bheek)
    for k in bheek[0:20]:
	bheekSource.append(k["images"][0]["source"])
    template = loader.get_template('gallery.html')
    context ={
        "pics" : bheekSource,
        }
    return HttpResponse(renderContent(template.render(context, request),request))

def team(request):
	prof = execom.objects.filter(mtype=1)
	core = execom.objects.filter(mtype=2)
	exe = execom.objects.filter(mtype=3)
	context = {
		'professors' : prof,
		'cores' : core,
		'execoms' : exe,
	}
	template = loader.get_template('team.html')
	return HttpResponse(renderContent(template.render(context,request),request))

def jsonupdates(request):
	nisbBulletin = Bulletin.objects.order_by('-id')[:6]
	context = {
			'news' : nisbBulletin,
			}
	template = loader.get_template('bulletin.html')
	return HttpResponse(renderContent(template.render(context,request),request))

def certbot(request):
    return HttpResponse("KxGRFMXv7hx7XTjwn7Im5S-hduIJXTbZNTGOAeyHqJQ.oO614-gq68xF9lRKksKX-TCLtheJFVIUGihspINe3Ws")

def wwwcertbot(request):
    return HttpResponse("iA3qS48yB3HYsDBpR7Levd3u9SrQUb64oQMKPjmb1XQ.oO614-gq68xF9lRKksKX-TCLtheJFVIUGihspINe3Ws")

@csrf_exempt
def gs2db(request):
	inum = request.POST.get("inum")
	memName = request.POST.get("memName")
	ema = request.POST.get("email")
	phone = request.POST.get("phone")
	CS = request.POST.get("cs")
	semester = request.POST.get("sem")
	br = request.POST.get("br")
	if(CS=="True"):
		CS=True
	else:
		CS=False
	ob = User(ieee_num=int(inum), name=memName, emailAddress=ema, phno=phone, isCS=bool(CS), sem=semester, branch=br)
	ob.save()
	res="<html><body>Done</body></html>"
	return HttpResponse(res)

@csrf_exempt
def appSignIn(request):
	resData = {}
	resData['success'] = True
	if request.method != 'POST':
		resData['success'] = False
	try:
		if(request.POST.get("ieeeno")):
			mem = User.objects.get(ieee_num=int(request.POST.get("ieeeno")))
			resData['userData']={}
			resData['userData']['name'] = mem.name
			resData['userData']['ieeeno'] = mem.ieee_num
			resData['userData']['emailAddress'] = mem.emailAddress
			resData['userData']['sem'] = mem.sem
			resData['userData']['branch'] = mem.branch
			resData['userData']['isCS'] = mem.isCS
			resData['userData']['phone'] = mem.phno
		else:
			resData['success'] = False
	except User.DoesNotExist:
		resData['success'] = False
	print resData
	if('userData' in resData and resData['userData']['emailAddress'] != request.POST.get("email")):
		resData['success'] = True
		resDta['userData'] = 0
	return JsonResponse(resData)
