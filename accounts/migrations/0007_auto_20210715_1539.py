# Generated by Django 3.2.4 on 2021-07-15 20:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0006_auto_20210715_1412'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usuarios',
            name='dni',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='fecha_nacimiento',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='usuarios',
            name='id',
            field=models.AutoField(primary_key=True, serialize=False),
        ),
    ]
