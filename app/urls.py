from django.urls import path
from . import views

app_name = 'app'
urlpatterns = [
    path('index', views.IndexView.as_view(), name='index'),
    path('detail/<int:pk>', views.DetailView.as_view(), name='detail'),
    path('commit', views.CommitView.as_view(), name='commit')
]