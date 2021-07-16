from enum import auto
from django.db import models
from django.db.models.expressions import Value
from django.db.models.fields import CharField



# Create your models here.
class Usuarios(models.Model):
    id=models.AutoField(primary_key=True)
    dni=models.IntegerField(null=True, blank=True)
    nombres = models.CharField(max_length=75,null=False, blank=False)
    usuario = models.CharField(max_length=75,null=False, blank=False)
    telefono = models.CharField(max_length=75,null=False, blank=False)
    email = models.EmailField(max_length=254,null=False, blank=False)
    fecha_nacimiento =models.DateField(null=True, blank=True)
    password=models.CharField(max_length=75,null=False, blank=False)
    tipo_usuario = models.BooleanField(default=False)

class Empresa(models.Model):
    id=models.AutoField(primary_key=True)
    nombres = models.CharField(max_length=75,null=False, blank=False)
    usuario = models.CharField(max_length=75,null=False, blank=False)
    telefono = models.CharField(max_length=75,null=False, blank=False)
    email = models.EmailField(max_length=254,null=False, blank=False)
    password=models.CharField(max_length=75)
    ruc=models.CharField(max_length=255)
    distrito=models.CharField(max_length=255)
    departamento=models.CharField(max_length=255)
    nombre_empresa=models.CharField(max_length=75)

