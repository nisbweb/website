from django.conf.urls import url
from . import views

app_name = 'parent'

urlpatterns = [
    url(r'^$', views.index, name='index'),
	url(r'^app$', views.index, name='index'),
    url(r'^events/$', views.events, name='events'),
    url(r'events/register/$' , views.event_register,name='event_register'),
	url(r'^about/$', views.about, name='about'),
	url(r'^cs/$', views.cs, name='cs'),
	url(r'^wie/$', views.wie, name='wie'),
	url(r'^members/$', views.members, name='members'), #to be worked on later
	url(r'^fg/$', views.fg, name='fg'), #focus groups : indicate "filling in soon" only
	url(r'^roadmap/$', views.roadmap, name='roadmap'),
	url(r'^contact/$', views.contact, name='contact'),
        url(r'^team/$', views.team, name='team'),
        url(r'^gallery/$', views.gallery, name='gallery'),
        url(r'^jsonupdates/$', views.jsonupdates, name='jsonupdates'),
	url(r'^appSignIn/$', views.appSignIn, name='appSignIn'),
	url(r'^google761d5d7f07a54c5f.html$', views.googleVer, name='googleVer'),
        url(r'^.well-known/acme-challenge/KxGRFMXv7hx7XTjwn7Im5S-hduIJXTbZNTGOAeyHqJQ/$', views.certbot, name='certbot'),
        url(r'^.well-known/acme-challenge/iA3qS48yB3HYsDBpR7Levd3u9SrQUb64oQMKPjmb1XQ/$', views.wwwcertbot, name='wwwcertbot'),
	url(r'^gs2db/$', views.gs2db, name='gs2db'),
	url(r'^pay/$', views.pay, name='pay'),

]
