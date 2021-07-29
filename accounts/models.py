
from django.db import models


class Usuarios(models.Model):
    id=models.AutoField(primary_key=True)
    dni = models.IntegerField(blank=True, null=True)
    nombres = models.CharField(max_length=75)
    usuario = models.CharField(max_length=75)
    telefono = models.CharField(max_length=75)
    email = models.CharField(max_length=254)
    fecha_nacimiento = models.DateField(blank=True, null=True)
    password = models.CharField(max_length=75)
    tipo_usuario = models.BooleanField(default=False)

class Empresa(models.Model):
    codigo= models.CharField(max_length=8,primary_key=True)
    nombres = models.CharField(max_length=75)
    telefono = models.CharField(max_length=75)
    email = models.CharField(max_length=254)
    password = models.CharField(max_length=75)
    ruc = models.CharField(max_length=255)
    distrito = models.CharField(max_length=255)
    region = models.CharField(max_length=255)
    provincia = models.CharField(max_length=40, blank=True, null=True)
    nombre_empresa = models.CharField(max_length=75)
    tipo_usuario = models.BooleanField(default=True)
    categoria = models.CharField(max_length=8, blank=True, null=True)
    nivel = models.CharField(max_length=9, blank=True, null=True)
    institucion = models.CharField(max_length=40, blank=True, null=True)

class Reservacion(models.Model):
    nombres = models.CharField(max_length=20)
    dni = models.CharField(max_length=8)
    distrito = models.CharField(max_length=20)
    provincia = models.CharField(max_length=20)
    fecha= models.DateTimeField(auto_now_add=True, null=True)



