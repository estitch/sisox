from django.urls import path
from . import views

urlpatterns =[
    path("registroUsuario",views.registroUsuario,name ="registroUsuario"),
    path("registroAdministrador",views.registroAdministrador,name ="registroAdministrador"),
    path("loginUsuario",views.loginUsuario,name ="loginUsuario"),
    path("loginAdministrador",views.loginAdministrador,name ="loginAdministrador"),
    path("contactanos",views.contactanos,name ="contactanos"),
    path("contactanos1",views.contactanos1,name ="contactanos1"),
    path("contactanos2",views.contactanos2,name ="contactanos2"),
    path("reservacion",views.reservacion,name ="reservacion"),
    path("reservar",views.reservar,name ="reservar"),
    path("logout",views.logout,name ="logout"),
    path("actualizarEmpresa",views.actualizarEmpresa,name ="actualizarEmpresa"),
    path("compararLocales",views.compararLocales,name ="compararLocales"),
    path('DestinosList',views.listar,name="destinos listar"),
    path('EmpresaList',views.listarEmpresaCli,name="empresa listar"),
    path('ClienteList',views.clienteList,name="ClienteList"),
    path('ComparacionList',views.listarComparaciones,name="comparacion listar"),
    path('ComparacionListIndex',views.listarComparacionesIndex,name="comparacion listar"),
    path('compararLocalesIndex',views.compararLocalesIndex,name="comparacion listar"),
    path("usuarioCliente",views.usuarioCliente,name ="usuarioCliente"),
    path("usuarioAdmi",views.usuarioAdmi,name ="usuarioAdmi"),
    path("confirmacion",views.confirmacion,name ="confirmacion"),
    ]
