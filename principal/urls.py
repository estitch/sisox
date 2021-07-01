from django.urls import path
from . import views

urlpatterns =[
    path("",views.index,name ="index"),
    path("Cliente",views.Cliente,name ="Cliente"),
    path("Administrador",views.Administrator,name ="Administrador")
    ]