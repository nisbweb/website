from django.db import models
import datetime

# Create your models here.

# Bulletin/Tech news home page
class Bulletin(models.Model):
	subjectsTo_choices = (
			(0, "Branch"),
			(1, "Sectional"),
			(2, "Regional"),
			(3, "Interregional"),
			(4, "Misc"),
			)
	# Bulletin line
	theLine = models.TextField(null=False, unique=True)
	# Link to detailed information
	theLink = models.URLField(unique=True)
	subjectsTo = models.PositiveIntegerField(choices=subjectsTo_choices, null=False)
	def __str__(self):
		return self.theLine

# Member's details, more to be added
class User(models.Model):
	ieee_num = models.PositiveIntegerField(primary_key=True)
	name = models.CharField(max_length=40)
	emailAddress = models.CharField(max_length=50, default="nisbglimpse@gmail.com")
	phno = models.CharField(max_length=10, default="0000000000")
	isCS = models.BooleanField(default=False)
	sem = models.CharField(max_length=1, default="1")
	branch = models.CharField(max_length=5, default="ECE")
	def __str__(self):
		return self.name

class execom(models.Model):
	mtypes = (
		(1, "Professors"),
		(2, "Core"),
		(3, "Execom"),
		(4, "Volunteer"),
	)
	name = models.CharField(max_length=40)
	email = models.CharField(max_length=100)
	photo = models.URLField()
	mtype = models.PositiveIntegerField(choices=mtypes, null=False)
	post = models.CharField(max_length=30)
	phone = models.CharField(max_length=10, null=True)

	def __str__(self):
		return self.name

class EventPrice(models.Model):
	eventid = models.CharField(max_length=30, primary_key=True)
	event_name = models.CharField(max_length=20)
	normal = models.CharField(max_length=3, null=False,default="0")
	ieee = models.CharField(max_length=3, null=False, default="0")
	cs = models.CharField(max_length=3, default="0")
	oth = models.CharField(max_length=3, default="0")
	altLnk = models.URLField()
	def __str__(self):
		return self.event_name
