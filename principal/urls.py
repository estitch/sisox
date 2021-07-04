from django.urls import path
from . import views

urlpatterns =[
    path("",views.index,name ="index"),
    path("Registro",views.Cliente,name ="Registro"),
    path("Login",views.Administrador,name ="Login")
    ]