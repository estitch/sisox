from django.shortcuts import redirect, render
from django.contrib.auth.models import User, auth
from django.contrib import messages
from .models import Usuarios


def registroUsuario(request):

    if request.method == 'POST':
        dni= 00000000
        nombres = request.POST['first_name']
        usuario = request.POST['username']
        telefono = request.POST['telefono']
        email = request.POST['email']
        tipo_usuario=request.POST.get('planta',False)
        password=request.POST['password1Cliente']
        repassword=request.POST['password2Cliente']
        if tipo_usuario=='on':
            tipo_usuario=True
        else:
            tipo_usuario=False

        if password==repassword:
            usuAdd = Usuarios.objects.create(dni=dni,nombres=nombres,usuario=usuario,telefono=telefono,tipo_usuario=tipo_usuario,password=password,email=email)  
            usuAdd.save();
            print('usuario creado')
            usuarios= Usuarios.objects.all()
        else:
            print('password incorrecto')

        if tipo_usuario==False:
                return render(request,"indexCliente.html",{'nombreUsuario': usuario})
        else :
                return render(request,"indexEmpresa.html",{'nombreUsuario': usuario})
    return render(request, "Registro.html")

def loginUsuario(request):
    if request.method =='POST':
        
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        data=Usuarios.objects.get(email=email)

        if password==data.password and username==data.usuario:
            if data.tipo_usuario==False:
                return render(request,"indexCliente.html",{'nombreUsuario': data.usuario})
            else :
                return render(request,"indexEmpresa.html",{'nombreUsuario': data.usuario})
        else:
            return redirect('loginUsuario')
    else:
        return render(request,'Login.html')


def logout(request):
    auth.logout(request)
    return redirect('index')


# USUARIO EMPRESA

