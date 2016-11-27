# -*- coding: utf-8 -*-
# Generated by Django 1.10.3 on 2016-11-27 00:00
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='cart',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('order_id', models.IntegerField()),
                ('package_id', models.IntegerField()),
                ('amount', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='order',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cust_id', models.IntegerField()),
                ('bar_id', models.IntegerField()),
                ('date', models.CharField(max_length=50)),
                ('party_size', models.IntegerField(default=0)),
                ('time', models.CharField(max_length=50)),
                ('sumprice', models.IntegerField(default=0, null=True)),
            ],
        ),
    ]