from django.conf.urls import url
from . import views

app_name = 'usermanage'

urlpatterns=[
    url(r'^$', views.homepage, name='homepage'),
    url(r'^gotologin/', views.gotologin, name='gotologin'),
    url(r'^gotoregister/', views.gotoregister, name='gotoregister'),
    url(r'^logout/', views.logout, name='logout'),
    url(r'^login/', views.login, name='login'),
    url(r'^register/', views.register, name='register'),
	


]
