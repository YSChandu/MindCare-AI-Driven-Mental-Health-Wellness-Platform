from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver


# Recommended Database Model
class Chat(models.Model):
    SUPPORT_LEVELS = [
        ('low_risk', 'Low Risk'),
        ('moderate_risk', 'Moderate Risk'),
        ('high_risk', 'High Risk')
    ]
    
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    message = models.TextField()
    response = models.TextField(max_length=1000)
    support_level = models.CharField(
        max_length=20, 
        choices=SUPPORT_LEVELS, 
        default='low_risk'
    )
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Chat with {self.user.username} at {self.created_at}"



class Profile(models.Model):
    GENDER_CHOICES = [
        ('M', 'Male'),
        ('F', 'Female'),
        ('O', 'Other'),
    ]
    
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    avatar = models.ImageField(upload_to='avatars/', null=True, blank=True)
    mobile_number = models.CharField(max_length=15, blank=True, null=True)  # Optional field
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True, null=True)  # Optional field
    nationality = models.CharField(max_length=50, blank=True, null=True)  # Optional field

    def __str__(self):
        return self.user.username


@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)

@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwargs):
    instance.profile.save()


