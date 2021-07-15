from django.urls import path
from . import views

urlpatterns =[
    path("registroUsuario",views.registroUsuario,name ="registroUsuario"),
    path("loginUsuario",views.loginUsuario,name ="loginUsuario"),
    #path("loginUsuario",indexCliente.html,name ="loginUsuario"),
    path("logout",views.logout,name ="logout")
    ]