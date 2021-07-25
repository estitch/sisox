# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Calificacion(models.Model):
    codigocalificacion = models.AutoField(db_column='CodigoCalificacion', primary_key=True)  # Field name made lowercase.
    codigoipress = models.OneToOneField('Ipress', models.DO_NOTHING, db_column='CodigoIpress')  # Field name made lowercase.
    calificacionestrellas = models.DecimalField(db_column='CalificacionEstrellas', max_digits=10, decimal_places=0)  # Field name made lowercase.
    estadoregistrocalificacion = models.CharField(db_column='EstadoRegistroCalificacion', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'calificacion'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Ipress(models.Model):
    codigoipress = models.AutoField(db_column='CodigoIpress', primary_key=True)  # Field name made lowercase.
    nombreipress = models.CharField(db_column='NombreIpress', max_length=80)  # Field name made lowercase.
    fecharegistro = models.DateField(db_column='FechaRegistro')  # Field name made lowercase.
    nivellipress = models.CharField(db_column='NivellIpress', max_length=8)  # Field name made lowercase.
    institucion = models.CharField(db_column='Institucion', max_length=25)  # Field name made lowercase.
    ubigeo = models.IntegerField(db_column='Ubigeo')  # Field name made lowercase.
    region = models.CharField(db_column='Region', max_length=50)  # Field name made lowercase.
    provincia = models.CharField(db_column='Provincia', max_length=50)  # Field name made lowercase.
    distrito = models.CharField(db_column='Distrito', max_length=50)  # Field name made lowercase.
    cilindrostotales = models.IntegerField(db_column='CilindrosTotales')  # Field name made lowercase.
    volumenpotencial = models.DecimalField(db_column='VolumenPotencial', max_digits=10, decimal_places=0)  # Field name made lowercase.
    totalplantas = models.IntegerField(db_column='TotalPlantas')  # Field name made lowercase.
    consumodia = models.DecimalField(db_column='ConsumoDia', max_digits=10, decimal_places=0)  # Field name made lowercase.
    descripcionlocal = models.TextField(db_column='DescripcionLocal')  # Field name made lowercase.
    telefonoipress = models.CharField(db_column='TelefonoIpress', max_length=15)  # Field name made lowercase.
    correoipress = models.CharField(db_column='CorreoIpress', max_length=30)  # Field name made lowercase.
    ruc = models.IntegerField(db_column='RUC')  # Field name made lowercase.
    estadoregistroipress = models.CharField(db_column='EstadoRegistroIpress', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ipress'


class Noticia(models.Model):
    codigonoticia = models.AutoField(db_column='CodigoNoticia', primary_key=True)  # Field name made lowercase.
    codigoipress = models.OneToOneField(Ipress, models.DO_NOTHING, db_column='CodigoIpress')  # Field name made lowercase.
    titulonoticia = models.CharField(db_column='TituloNoticia', max_length=80)  # Field name made lowercase.
    descripccionnoticia = models.TextField(db_column='DescripccionNoticia')  # Field name made lowercase.
    fechanoticia = models.DateField(db_column='FechaNoticia')  # Field name made lowercase.
    estadoregistronoticia = models.CharField(db_column='EstadoRegistroNoticia', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'noticia'


class Oxigenodisponible(models.Model):
    codigooxigenodisponible = models.AutoField(db_column='CodigoOxigenoDisponible', primary_key=True)  # Field name made lowercase.
    codigoipress = models.OneToOneField(Ipress, models.DO_NOTHING, db_column='CodigoIpress')  # Field name made lowercase.
    cilindrosllenos = models.IntegerField(db_column='CilindrosLlenos')  # Field name made lowercase.
    volumendisponible = models.IntegerField(db_column='VolumenDisponible')  # Field name made lowercase.
    preciooxigeno = models.IntegerField(db_column='PrecioOxigeno')  # Field name made lowercase.
    estadoregistrooxigeno = models.IntegerField(db_column='EstadoRegistroOxigeno')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'oxigenodisponible'


class Puntosred(models.Model):
    codigopuntored = models.OneToOneField(Ipress, models.DO_NOTHING, db_column='CodigoPuntoRed', primary_key=True)  # Field name made lowercase.
    reduciadultos = models.CharField(db_column='RedUciAdultos', max_length=30)  # Field name made lowercase.
    reducineonatal = models.CharField(db_column='RedUciNeonatal', max_length=30)  # Field name made lowercase.
    reducipediatria = models.CharField(db_column='RedUciPediatria', max_length=30)  # Field name made lowercase.
    reducin = models.CharField(db_column='RedUcin', max_length=30)  # Field name made lowercase.
    redhospitalizacion = models.CharField(db_column='RedHospitalizacion', max_length=30)  # Field name made lowercase.
    redemergencia = models.CharField(db_column='RedEmergencia', max_length=30)  # Field name made lowercase.
    redhospitalizaciontemp = models.CharField(db_column='RedHospitalizacionTemp', max_length=30)  # Field name made lowercase.
    redcriticotemporal = models.CharField(db_column='RedCriticoTemporal', max_length=30)  # Field name made lowercase.
    estadoregistrored = models.CharField(db_column='EstadoRegistroRed', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'puntosred'


class Reservacion(models.Model):
    codigoreservacion = models.AutoField(db_column='CodigoReservacion', primary_key=True)  # Field name made lowercase.
    codigotipo = models.OneToOneField('Usuariocliente', models.DO_NOTHING, db_column='CodigoTipo')  # Field name made lowercase.
    codigoipress = models.OneToOneField(Ipress, models.DO_NOTHING, db_column='CodigoIpress')  # Field name made lowercase.
    horarioreservacion = models.DateField(db_column='HorarioReservacion')  # Field name made lowercase.
    cantidadoxigeno = models.FloatField(db_column='CantidadOxigeno')  # Field name made lowercase.
    estadoregistroreservacion = models.CharField(db_column='EstadoRegistroReservacion', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'reservacion'


class Saturacion(models.Model):
    codigosaturacion = models.AutoField(db_column='CodigoSaturacion', primary_key=True)  # Field name made lowercase.
    codigoipress = models.OneToOneField(Ipress, models.DO_NOTHING, db_column='CodigoIpress')  # Field name made lowercase.
    nivelsaturacion = models.DecimalField(db_column='NivelSaturacion', max_digits=10, decimal_places=0)  # Field name made lowercase.
    estadoregistrosaturacion = models.CharField(db_column='EstadoRegistroSaturacion', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'saturacion'


class Tipousuario(models.Model):
    codigotipo = models.AutoField(db_column='CodigoTipo', primary_key=True)  # Field name made lowercase.
    tipousuario = models.CharField(db_column='TipoUsuario', max_length=40)  # Field name made lowercase.
    estadoregistrotipousuario = models.CharField(db_column='EstadoRegistroTipoUsuario', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tipousuario'


class Usuarioadministrador(models.Model):
    tipousuario = models.IntegerField(db_column='TipoUsuario')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'usuarioadministrador'


class Usuariocliente(models.Model):
    codigousuario = models.AutoField(db_column='CodigoUsuario', primary_key=True)  # Field name made lowercase.
    nombreusuario = models.CharField(db_column='NombreUsuario', max_length=30)  # Field name made lowercase.
    apellido1usuario = models.CharField(db_column='Apellido1Usuario', max_length=30)  # Field name made lowercase.
    apellido2usuario = models.CharField(db_column='Apellido2Usuario', max_length=30)  # Field name made lowercase.
    tipousuario = models.OneToOneField(Tipousuario, models.DO_NOTHING, db_column='TipoUsuario')  # Field name made lowercase.
    recetamedica = models.CharField(db_column='RecetaMedica', max_length=50)  # Field name made lowercase.
    celular = models.IntegerField(db_column='Celular')  # Field name made lowercase.
    fechanacimiento = models.DateField(db_column='FechaNacimiento')  # Field name made lowercase.
    correocliente = models.CharField(db_column='CorreoCliente', max_length=30)  # Field name made lowercase.
    sexo = models.CharField(db_column='Sexo', max_length=1)  # Field name made lowercase.
    dni = models.IntegerField(db_column='DNI')  # Field name made lowercase.
    estadoregistrocliente = models.CharField(db_column='EstadoRegistroCliente', max_length=1)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'usuariocliente'
