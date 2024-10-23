from django.contrib import admin
from django.urls import path
from hrapp.views import StaffList,StaffDetail,JobList,JobDetail,DepartmentList,DepartmentDetail

urlpatterns = [
    path('admin/', admin.site.urls),
    path('staff/', StaffList.as_view(), name='staff-list'),
    path('staff/<int:pk>/', StaffDetail.as_view(), name='staff-detail'),
    path('job/', JobList.as_view(), name='job-list'),
    path('job/<int:pk>/', JobDetail.as_view(), name='job-detail'),
    path('department/', DepartmentList.as_view(), name='dept-list'),
    path('department/<int:pk>/', DepartmentDetail.as_view(), name='dept-detail'),
]
