from .models import *
from rest_framework import serializers


class JobSerializer(serializers.ModelSerializer):
    class Meta:
        model = Job
        fields = ['job_id', 'job_name']


class DepartmentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Department
        fields = ['dept_id', 'dept_name']


class StaffSerializer(serializers.ModelSerializer):
    dept_name = serializers.SerializerMethodField()
    job_name = serializers.SerializerMethodField()
    
    class Meta:
        model = Staff
        fields = ['staff_id', 'fullname', 'age', 'phone', 'email', 'dept','job','dept_name', 'job_name']
    
    def get_dept_name(self, obj):
        return obj.dept.dept_name
    
    def get_job_name(self, obj):
        return obj.job.job_name
