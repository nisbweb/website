import requests as req
import os
from django.shortcuts import redirect
from django.http import HttpResponse

MAX_TRY = 5

def payAmt(context):
	print context
	headers = { "X-Api-Key": os.environ["MOJO_PKEY"], "X-Auth-Token": os.environ["MOJO_AKEY"]}
        payload = {
                'purpose': context["purpose"],
                'amount': context['amt'],
                'buyer_name': context['buyer'],
                'email': context['email'],
                'phone': context['phone'],
                'redirect_url': 'http://www.nisb.in/events/register/?success=1',
                'send_email': 'True',
                'send_sms': 'True',
                #'webhook': 'http:/localhost:5000/webhooking',
                'allow_repeated_payments': 'False',
                }
        response = req.post("https://www.instamojo.com/api/1.1/payment-requests/", data=payload, headers=headers)
        print response
        payreq = response.json()
        print payreq
        payreq2 = payreq["payment_request"]
        if(payreq["success"]==True):
                return redirect(payreq2["longurl"], code=302)
        else:
                if(context["count"]>MAX_TRY):
			context["count"]=context["count"]+1
			return HttpResponse('<html><body><h1>Failed! Try again later!</h1><a href="http://www.nisb.in">Go back to home</a></body></html>')
