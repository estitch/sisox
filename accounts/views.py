from django.shortcuts import redirect, render
from django.contrib.auth.models import User, auth
from django.contrib import messages
from .models import Usuarios,Empresa,Reservacion


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
                return render(request,"indexCliente.html")
        else :
                return render(request,"indexEmpresa.html")
    return render(request, "Registro.html")

def registroAdministrador(request):

    if request.method == 'POST':
        nombres = request.POST['nameAdmi']
        codigo = request.POST['codigo']
        telefono = request.POST['telAdmi']
        email = request.POST['correoAdmi']
        #tipo_usuario=request.POST.get('planta',False)
        password=request.POST['password1Admi']
        repassword=request.POST['password2Admi']
        tipo_usuario=True

        if password==repassword:
            usuAdd = Empresa.objects.create(nombres=nombres,codigo=codigo,telefono=telefono,tipo_usuario=tipo_usuario,password=password,email=email)  
            usuAdd.save();
            print('usuario creado')
            usuarios= Empresa.objects.all()
        else:
            print('password incorrecto')

        return render(request,"indexEmpresa.html")
    return render(request, "Registro.html")

def loginUsuario(request):
    if request.method =='POST':
        
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        data=Usuarios.objects.get(email=email)

        if password==data.password and username==data.usuario:
            if data.tipo_usuario==False:
                return render(request,"indexCliente.html")
            else :
                return render(request,"indexEmpresa.html")
        else:
            return redirect('loginUsuario')
    else:
        return render(request,'Login.html')

def reservacion(request):
        return render(request,"reservacion.html")

def reservar(request):
    if request.method =='POST':
        nombres = request.POST['nombres']
        dni = request.POST['dni']
        distrito = request.POST['distrito']
        provincia = request.POST['provincia']
        fecha = request.POST['fecha']
        
        usuAdd = Reservacion.objects.create(nombres=nombres,dni=dni,distrito=distrito,provincia=provincia,fecha=fecha)
        usuAdd.save();

        reserva= Reservacion.objects.all()

        return render(request,"confirmadoCasi.html")

def confirmacion(request):
    reserva = Reservacion.objects.all()
    data ={
        'reserva':reserva
    }
    return render(request,"confirmado.html",data)

def loginAdministrador(request):
    if request.method =='POST':
        
        nameAdmi = request.POST['nameAdmi']
        email = request.POST['emailAdmi']
        password = request.POST['passwordAdmi']
        data=Empresa.objects.get(email=email)
        if password==data.password and nameAdmi==data.nombres:
            return render(request,"indexEmpresa.html")
        else:
            return redirect('loginUsuario')
    else:
        return render(request,'Login.html')


def logout(request):
    auth.logout(request)
    return redirect('index')

def listar(request):
    if request.method == 'POST':
        reg = request.POST['region']
        cat = request.POST['categoria']
        print(reg,'\n')
        print(cat,'\n')
        if reg=="NINGUNO" and cat== "Ninguno":
            filtrar = Empresa.objects.all()
        else:    
            if reg!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg)         
            if cat!= "Ninguno":
                filtrar = Empresa.objects.filter(categoria=cat)     
            if reg!="NINGUNO" and cat!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg,categoria=cat)         
        print("encontrado")

    else:
        filtrar = Empresa.objects.all().order_by('region','categoria')
    
    #se manda si o si
    data ={
        'empresas':filtrar
    }
    return render(request,"listarEmpresas.html",data)
    

def listarEmpresaCli(request):
    if request.method == 'POST':
        reg = request.POST['region']
        cat = request.POST['categoria']
        print(reg,'\n')
        print(cat,'\n')
        if reg=="NINGUNO" and cat== "Ninguno":
            filtrar = Empresa.objects.all()
        else:    
            if reg!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg)         
            if cat!= "Ninguno":
                filtrar = Empresa.objects.filter(categoria=cat)     
            if reg!="NINGUNO" and cat!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg,categoria=cat)         
        print("encontrado")

    else:
        filtrar = Empresa.objects.all().order_by('region','categoria')
    
    #se manda si o si
    data ={
        'empresas':filtrar
    }
    return render(request,"listarEmpresasCliente.html",data)

def listarComparaciones(request):
    if request.method == 'POST':
        reg = request.POST['region']
        cat = request.POST['categoria']
        print(reg,'\n')
        print(cat,'\n')
        if reg=="NINGUNO" and cat== "Ninguno":
            filtrar = Empresa.objects.all()
        else:    
            if reg!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg)         
            if cat!= "Ninguno":
                filtrar = Empresa.objects.filter(categoria=cat)     
            if reg!="NINGUNO" and cat!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg,categoria=cat)         
        print("encontrado")

    else:
        filtrar = Empresa.objects.all().order_by('region','categoria')
    
    #se manda si o si
    data ={
        'empresas':filtrar
    }
    return render(request,"listarComparaciones.html",data)

def listarComparacionesIndex(request):
    if request.method == 'POST':
        reg = request.POST['region']
        cat = request.POST['categoria']
        print(reg,'\n')
        print(cat,'\n')
        if reg=="NINGUNO" and cat== "Ninguno":
            filtrar = Empresa.objects.all()
        else:    
            if reg!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg)         
            if cat!= "Ninguno":
                filtrar = Empresa.objects.filter(categoria=cat)     
            if reg!="NINGUNO" and cat!= "Ninguno":
                filtrar = Empresa.objects.filter(region=reg,categoria=cat)         
        print("encontrado")

    else:
        filtrar = Empresa.objects.all().order_by('region','categoria')
    
    #se manda si o si
    data ={
        'empresas':filtrar
    }
    return render(request,"listarComparacionesIndex.html",data)

def clienteList(request):
    cliente = Reservacion.objects.all()
    data ={
        'cliente':cliente
    }
    return render(request,"listarCliente.html",data)

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
    return render(request,'indexEmpresa.html')

def compararLocales(request):

    if request.method == 'POST':
        local1 = request.POST['local1']
        local2 = request.POST['local2']
        #data.save()
        #hacer consulta a la base de datos y enviarlo a compararLocales.html
    return render(request,'compararLocales.html',{})

def compararLocalesIndex(request):

    if request.method == 'POST':
        local1 = request.POST['local1']
        local2 = request.POST['local2']
        #data.save()
        #hacer consulta a la base de datos y enviarlo a compararLocales.html
    return render(request,'compararLocalesIndex.html',{})


def contactanos(request):
    return render(request,"contactanos.html",{})

def usuarioCliente(request):
    return render(request,"indexCliente.html",{})

def usuarioAdmi(request):
    return render(request,"indexEmpresa.html",{})

def contactanos1(request):
    return render(request,"contactanosLogueado.html",{})

def contactanos2(request):
    return render(request,"contactanosLogueadoE.html",{})
