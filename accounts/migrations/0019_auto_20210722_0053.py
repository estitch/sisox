# Generated by Django 3.2.4 on 2021-07-22 05:53

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0018_auto_20210715_1953'),
    ]

    operations = [
        migrations.CreateModel(
            name='AuthGroup',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150, unique=True)),
            ],
            options={
                'db_table': 'auth_group',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthGroupPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_group_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthPermission',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('codename', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'auth_permission',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=150)),
                ('last_name', models.CharField(max_length=150)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserGroups',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_user_groups',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AuthUserUserPermissions',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
            ],
            options={
                'db_table': 'auth_user_user_permissions',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Calificacion',
            fields=[
                ('codigocalificacion', models.AutoField(db_column='CodigoCalificacion', primary_key=True, serialize=False)),
                ('calificacionestrellas', models.DecimalField(db_column='CalificacionEstrellas', decimal_places=0, max_digits=10)),
                ('estadoregistrocalificacion', models.CharField(db_column='EstadoRegistroCalificacion', max_length=1)),
            ],
            options={
                'db_table': 'calificacion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoAdminLog',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('action_time', models.DateTimeField()),
                ('object_id', models.TextField(blank=True, null=True)),
                ('object_repr', models.CharField(max_length=200)),
                ('action_flag', models.PositiveSmallIntegerField()),
                ('change_message', models.TextField()),
            ],
            options={
                'db_table': 'django_admin_log',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoContentType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('app_label', models.CharField(max_length=100)),
                ('model', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'django_content_type',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoMigrations',
            fields=[
                ('id', models.BigAutoField(primary_key=True, serialize=False)),
                ('app', models.CharField(max_length=255)),
                ('name', models.CharField(max_length=255)),
                ('applied', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_migrations',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='DjangoSession',
            fields=[
                ('session_key', models.CharField(max_length=40, primary_key=True, serialize=False)),
                ('session_data', models.TextField()),
                ('expire_date', models.DateTimeField()),
            ],
            options={
                'db_table': 'django_session',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Ipress',
            fields=[
                ('codigoipress', models.AutoField(db_column='CodigoIpress', primary_key=True, serialize=False)),
                ('nombreipress', models.CharField(db_column='NombreIpress', max_length=80)),
                ('fecharegistro', models.DateField(db_column='FechaRegistro')),
                ('nivellipress', models.CharField(db_column='NivellIpress', max_length=8)),
                ('institucion', models.CharField(db_column='Institucion', max_length=25)),
                ('ubigeo', models.IntegerField(db_column='Ubigeo')),
                ('region', models.CharField(db_column='Region', max_length=50)),
                ('provincia', models.CharField(db_column='Provincia', max_length=50)),
                ('distrito', models.CharField(db_column='Distrito', max_length=50)),
                ('cilindrostotales', models.IntegerField(db_column='CilindrosTotales')),
                ('volumenpotencial', models.DecimalField(db_column='VolumenPotencial', decimal_places=0, max_digits=10)),
                ('totalplantas', models.IntegerField(db_column='TotalPlantas')),
                ('consumodia', models.DecimalField(db_column='ConsumoDia', decimal_places=0, max_digits=10)),
                ('descripcionlocal', models.TextField(db_column='DescripcionLocal')),
                ('telefonoipress', models.CharField(db_column='TelefonoIpress', max_length=15)),
                ('correoipress', models.CharField(db_column='CorreoIpress', max_length=30)),
                ('ruc', models.IntegerField(db_column='RUC')),
                ('estadoregistroipress', models.CharField(db_column='EstadoRegistroIpress', max_length=1)),
            ],
            options={
                'db_table': 'ipress',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Noticia',
            fields=[
                ('codigonoticia', models.AutoField(db_column='CodigoNoticia', primary_key=True, serialize=False)),
                ('titulonoticia', models.CharField(db_column='TituloNoticia', max_length=80)),
                ('descripccionnoticia', models.TextField(db_column='DescripccionNoticia')),
                ('fechanoticia', models.DateField(db_column='FechaNoticia')),
                ('estadoregistronoticia', models.CharField(db_column='EstadoRegistroNoticia', max_length=1)),
            ],
            options={
                'db_table': 'noticia',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Oxigenodisponible',
            fields=[
                ('codigooxigenodisponible', models.AutoField(db_column='CodigoOxigenoDisponible', primary_key=True, serialize=False)),
                ('cilindrosllenos', models.IntegerField(db_column='CilindrosLlenos')),
                ('volumendisponible', models.IntegerField(db_column='VolumenDisponible')),
                ('preciooxigeno', models.IntegerField(db_column='PrecioOxigeno')),
                ('estadoregistrooxigeno', models.IntegerField(db_column='EstadoRegistroOxigeno')),
            ],
            options={
                'db_table': 'oxigenodisponible',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Reservacion',
            fields=[
                ('codigoreservacion', models.AutoField(db_column='CodigoReservacion', primary_key=True, serialize=False)),
                ('horarioreservacion', models.DateField(db_column='HorarioReservacion')),
                ('cantidadoxigeno', models.FloatField(db_column='CantidadOxigeno')),
                ('estadoregistroreservacion', models.CharField(db_column='EstadoRegistroReservacion', max_length=1)),
            ],
            options={
                'db_table': 'reservacion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Saturacion',
            fields=[
                ('codigosaturacion', models.AutoField(db_column='CodigoSaturacion', primary_key=True, serialize=False)),
                ('nivelsaturacion', models.DecimalField(db_column='NivelSaturacion', decimal_places=0, max_digits=10)),
                ('estadoregistrosaturacion', models.CharField(db_column='EstadoRegistroSaturacion', max_length=1)),
            ],
            options={
                'db_table': 'saturacion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Tipousuario',
            fields=[
                ('codigotipo', models.AutoField(db_column='CodigoTipo', primary_key=True, serialize=False)),
                ('tipousuario', models.CharField(db_column='TipoUsuario', max_length=40)),
                ('estadoregistrotipousuario', models.CharField(db_column='EstadoRegistroTipoUsuario', max_length=1)),
            ],
            options={
                'db_table': 'tipousuario',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usuarioadministrador',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipousuario', models.IntegerField(db_column='TipoUsuario')),
            ],
            options={
                'db_table': 'usuarioadministrador',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Usuariocliente',
            fields=[
                ('codigousuario', models.AutoField(db_column='CodigoUsuario', primary_key=True, serialize=False)),
                ('nombreusuario', models.CharField(db_column='NombreUsuario', max_length=30)),
                ('apellido1usuario', models.CharField(db_column='Apellido1Usuario', max_length=30)),
                ('apellido2usuario', models.CharField(db_column='Apellido2Usuario', max_length=30)),
                ('recetamedica', models.CharField(db_column='RecetaMedica', max_length=50)),
                ('celular', models.IntegerField(db_column='Celular')),
                ('fechanacimiento', models.DateField(db_column='FechaNacimiento')),
                ('correocliente', models.CharField(db_column='CorreoCliente', max_length=30)),
                ('sexo', models.CharField(db_column='Sexo', max_length=1)),
                ('dni', models.IntegerField(db_column='DNI')),
                ('estadoregistrocliente', models.CharField(db_column='EstadoRegistroCliente', max_length=1)),
            ],
            options={
                'db_table': 'usuariocliente',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='Empresa',
        ),
        migrations.DeleteModel(
            name='Usuarios',
        ),
        migrations.CreateModel(
            name='Puntosred',
            fields=[
                ('codigopuntored', models.OneToOneField(db_column='CodigoPuntoRed', on_delete=django.db.models.deletion.DO_NOTHING, primary_key=True, serialize=False, to='accounts.ipress')),
                ('reduciadultos', models.CharField(db_column='RedUciAdultos', max_length=30)),
                ('reducineonatal', models.CharField(db_column='RedUciNeonatal', max_length=30)),
                ('reducipediatria', models.CharField(db_column='RedUciPediatria', max_length=30)),
                ('reducin', models.CharField(db_column='RedUcin', max_length=30)),
                ('redhospitalizacion', models.CharField(db_column='RedHospitalizacion', max_length=30)),
                ('redemergencia', models.CharField(db_column='RedEmergencia', max_length=30)),
                ('redhospitalizaciontemp', models.CharField(db_column='RedHospitalizacionTemp', max_length=30)),
                ('redcriticotemporal', models.CharField(db_column='RedCriticoTemporal', max_length=30)),
                ('estadoregistrored', models.CharField(db_column='EstadoRegistroRed', max_length=1)),
            ],
            options={
                'db_table': 'puntosred',
                'managed': False,
            },
        ),
    ]
