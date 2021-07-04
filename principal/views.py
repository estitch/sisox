from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, "index.html")

def Cliente(request):
    return render(request, "Registro.html")

def Administrador(request):
    return render(request, "Login.html")