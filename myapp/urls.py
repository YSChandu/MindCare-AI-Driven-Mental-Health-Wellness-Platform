from django.urls import path
from . import views

urlpatterns=[
    path('',views.home,name='home'),
    path('register/',views.register,name='register'),
    path('login/',views.login,name='login'),
    path('logout/',views.logout,name='logout'),
    path('chat/', views.chatbot, name='chatbot'),
    path('resources/',views.resources,name='resources'),
    path('profile/', views.my_profile, name='profile'),
    path('edit/', views.edit_profile, name='edit_profile'),
    path('yoga/',views.yoga,name='yoga'),
    path('issues/',views.issues,name='issues'),
    path('anxietyissue/',views.anxietyissue,name='anxiety_issue'),
    path('issues/mood-disorder/', views.mooddisorder, name='mood_issue'),
    path('issues/ocd/', views.OCD, name='OCD'),
    path('issues/trauma/', views.trauma, name='trauma'),
    path('issues/personality/', views.personality, name='personality_issue'),
    path('issues/dissociative/', views.dissociative, name='dissociative'),
    path('issues/eating/', views.eating, name='eating'),
    path('issues/neurodevelopmental/', views.neurodevelop, name='neurodevelop'),
    path('issues/psychotic/', views.psychotic, name='psychotic'),
    path('issues/somatic/', views.somatic, name='somatic'),
    path('issues/sleep/', views.sleepissue, name='sleep_issue'),
    path('issues/impulse-control/', views.impulse, name='impulse'),
    path('issues/substance-abuse/', views.drugs, name='drugs'),
    path('issues/neurocognitive/', views.neurocognit, name='neurocognit'),
    path('issues/self-harm/', views.selfharm, name='self_harm'),
    path('aboutus/',views.aboutus,name='aboutus'),
    path('music/',views.music,name='music'),
    path('movies/',views.movies,name='movies'),
    path('breathing/',views.breathing,name='breathing'),
    path('workout/',views.exercise,name='workout'),
    path('selfhelpbooks/',views.selfhelpbooks,name='selfhelpbooks'),
    path('schedules/',views.schedules,name='schedules')
]



