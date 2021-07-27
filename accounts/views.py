from django.shortcuts import redirect, render
from django.contrib.auth.models import User, auth
from django.contrib import messages
from .models import Usuarios,Empresa


def registroUsuario(request):

    if request.method == 'POST':
        nombres = request.POST['first_name']
        usuario = request.POST['username']
        telefono = request.POST['telefono']
        email = request.POST['email']
        tipo_usuario=request.POST.get('planta',False)
        password=request.POST['password1Cliente']
        repassword=request.POST['password2Cliente']
        tipo_usuario=False

        if password==repassword:
            usuAdd = Usuarios.objects.create(nombres=nombres,usuario=usuario,telefono=telefono,tipo_usuario=tipo_usuario,password=password,email=email)  
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

def registroAdministrador(request):

    if request.method == 'POST':
        nombres = request.POST['nameAdmi']
        usuario = request.POST['usernameAdmi']
        telefono = request.POST['telAdmi']
        email = request.POST['correoAdmi']
        tipo_usuario=request.POST.get('planta',False)
        password=request.POST['password1Admi']
        repassword=request.POST['password2Admi']
        tipo_usuario=True

        if password==repassword:
            usuAdd = Empresa.objects.create(nombres=nombres,usuario=usuario,telefono=telefono,tipo_usuario=tipo_usuario,password=password,email=email)  
            usuAdd.save();
            print('usuario creado')
            usuarios= Empresa.objects.all()
        else:
            print('password incorrecto')

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

def loginAdministrador(request):
    if request.method =='POST':
        
        username = request.POST['usernameAdmi']
        email = request.POST['emailAdmi']
        password = request.POST['passwordAdmi']
        data=Empresa.objects.get(email=email)

        if password==data.password and username==data.usuario:
            return render(request,"indexEmpresa.html",{'nombreUsuario': data.usuario})
        else:
            return redirect('loginUsuario')
    else:
        return render(request,'Login.html')


def logout(request):
    auth.logout(request)
    return redirect('index')

def listarAdministrador(request):
    destinos = Empresa.objects.all()
    data ={
        'destinos':destinos
    }
    return render(request,"indexEmpresa.html",data)

# USUARIO EMPRESA
def actualizarEmpresa(request):
        
    if request.method == 'POST':  
        email = request.POST['email']
        data=Usuarios.objects.get(email=email)
        data=Usuarios.objects.all()
        print(data)
        data.nombres=request.POST['first_name']
        data.usuario=request.POST['username']
        data.telefono=request.POST['telefono']
        data.password=request.POST['password1Cliente']
        data.save()
    return render(request,'indexEmpresa.html',{'data':data})



def contactanos(request):
    return render(request,"contactanos.html",{})

def usuarioCliente(request):
    return render(request,"indexUsuario.html",{})

def reservacion(request):
    return render(request,"reservacion.html",{})

def contactanos1(request):
    return render(request,"contactanos.html",{})
