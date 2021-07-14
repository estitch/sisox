from django.shortcuts import redirect, render
from django.contrib.auth.models import User, auth
from django.contrib import messages

# Create your views here.
def loginCliente(request):
    if request.method =='POST':
        username = request.POST['username']
        password = request.POST['password']

        user =auth.authenticate(username=username,password=password)

        if user is not None:
            auth.login(request,user)
            return redirect("index")
        else:
            messages.info(request,'Invalid credentials')
            return redirect('logeoCliente')
    else:
        return render(request,'Login.html')

def registerCliente(request):

    if request.method == 'POST':
        username= request.POST['username']
        first_name= request.POST['first_name']
        emailCliente= request.POST['emailCliente']
        password1Cliente= request.POST['password1Cliente']
        password2Cliente= request.POST['password2Cliente']
        dniCliente= request.POST['dniCliente']

        if password1Cliente==password2Cliente:
            user = User.objects.create_user(username=username,first_name=first_name,email=emailCliente,password=password1Cliente)
            user.save();
            print('usuario creado')

        else:
            print('passwork incorrecto')
        return redirect('logeoCliente')
    return render(request, "Registro.html")

def logout(request):
    auth.logout(request)
    return redirect('index')

def Administrador(request):
    return render(request, "Login.html")