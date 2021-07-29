from django.contrib import admin
from .models import Reservacion, Usuarios, Empresa

# Register your models here.
admin.site.register(Usuarios)
admin.site.register(Empresa)
admin.site.register(Reservacion)