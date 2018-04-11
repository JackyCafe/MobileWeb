from django.db import models

# Create your models here.
class Maker(models.Model):
    name = models.CharField(max_length=20)
    country = models.CharField(max_length=10)
    def __str__(self):
        return self.name

class PModel (models.Model):
    maker = models.ForeignKey(Maker,on_delete=models.CASCADE)
    name = models.CharField(max_length=20)
    url = models.URLField(default='http://google.com')
    def __str__(self):
        return self.name

class Product (models.Model):
    model = models.ForeignKey(PModel,on_delete=models.CASCADE,verbose_name='型號')
    nickname = models.CharField(max_length=15,verbose_name='小名')
    description = models.TextField(verbose_name='說明',blank=True)
    year = models.IntegerField(verbose_name='出廠日期',blank=True)
    price = models.IntegerField(verbose_name='價格',blank=True)
    def __str__(self):
        return self.nickname

class PPHOTO (models.Model):
    product = models.ForeignKey(Product,on_delete=models.CASCADE)
    description = models.CharField(max_length=20)
    url = models.URLField(default='http://google.com')

    def __str__(self):
        return self.description