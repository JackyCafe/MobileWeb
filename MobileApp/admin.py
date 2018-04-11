from django.contrib import admin
from MobileApp import models

# Register your models here.
from MobileApp.models import Maker,PModel,Product,PPHOTO

class ProductAdmin(admin.ModelAdmin):
    list_display = ('model','nickname','year','price')
    search_fields = ['nickname']
    ordering = ['-price']

admin.site.register(Maker)
admin.site.register(PModel)
admin.site.register(Product,ProductAdmin)
admin.site.register(PPHOTO)