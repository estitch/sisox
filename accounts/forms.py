from django import forms
from accounts.models import Usuarios


class UsuarioFrom(forms.ModelForm):
    class Meta:
        model = Usuarios
        fields= '__all__'
        #widgets = ('fecha_nacimiento': forms.Dateinput(attrs={'type':'date'}))