from django.urls import path
from . import views

urlpatterns =[
    path("registroUsuario",views.registroUsuario,name ="registroUsuario"),
    path("registroAdministrador",views.registroAdministrador,name ="registroAdministrador"),
    path("loginUsuario",views.loginUsuario,name ="loginUsuario"),
    path("loginAdministrador",views.loginAdministrador,name ="loginAdministrador"),
    path("contactanos",views.contactanos,name ="contactanos"),
    path("contactanos1",views.contactanos1,name ="contactanos1"),
    path("reservacion",views.reservacion,name ="reservacion"),
    path("logout",views.logout,name ="logout"),
    path("actualizarEmpresa",views.actualizarEmpresa,name ="actualizarEmpresa"),
    path("compararLocales",views.compararLocales,name ="compararLocales"),
    ]
