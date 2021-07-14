from django.urls import path
from . import views

urlpatterns =[
    path("registroCliente",views.registerCliente,name ="registroCliente"),
    path("logeoCliente",views.loginCliente,name ="logeoCliente"),
    path("logout",views.logout,name ="logout")
    ]