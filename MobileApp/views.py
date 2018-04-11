from django.http import HttpResponse
from django.shortcuts import render, render_to_response

# Create your views here.
from django.template.loader import get_template
from MobileApp.models import Maker,Product,PPHOTO

def index(request):
    template = get_template('index.html',None)
    products = Product.objects.all();
    html = template.render(locals())
    return HttpResponse(html)

def detail(request,id):
    try:
        product = Product.objects.get(id =  id)
        images = PPHOTO.objects.filter(product=product)
    except:
        pass

    template = get_template('detail.html', None)
    products = Product.objects.all();
    html = template.render(locals())
    return HttpResponse(html)
    #return HttpResponse("Ma~ I am here {}".format(id))