from django.db import models

class Job(models.Model):
    job_id = models.AutoField(primary_key=True)
    job_name = models.CharField(max_length=20)

    def __str__(self):
        return self.job_name

class Department(models.Model):
    dept_id = models.AutoField(primary_key=True)
    dept_name = models.CharField(max_length=20)

    def __str__(self):
        return self.dept_name

class Staff(models.Model):
    staff_id = models.AutoField(primary_key=True)
    fullname = models.CharField(max_length=100)
    age = models.IntegerField()
    phone = models.CharField(max_length=11)
    email = models.EmailField(max_length=30)
    dept = models.ForeignKey(Department,to_field="dept_id", on_delete=models.CASCADE)
    job = models.ForeignKey(Job, to_field="job_id", on_delete=models.CASCADE)

    def __str__(self):
        return self.fullname