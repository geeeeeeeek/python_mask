from django.db import models

# Create your models here.

class Product(models.Model):
    list_display = ("title", "type", "location")
    title = models.CharField(max_length=100,blank=True, null=True)
    type = models.IntegerField(default=0)
    pv = models.IntegerField(default=0)
    contact = models.CharField(max_length=10,blank=True, null=True)
    location = models.CharField(max_length=20,blank=True, null=True)
    phone = models.CharField(max_length=13, blank=True, null=True)
    weixin = models.CharField(max_length=50, blank=True, null=True)
    status = models.BooleanField(default=False)
    timestamp = models.DateTimeField(auto_now_add=True, null=True)
    expire = models.IntegerField(default=1)

    def __str__(self):
        return self.title

    class Meta:
        db_table = "mask_product"
