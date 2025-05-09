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
    path('anxiety/', views.anxietyissue, name='anxiety_issue'),
    path('mood/', views.mooddisorder, name='mood_issue'),
    path('ocd/', views.OCD, name='OCD'),
    path('trauma/', views.trauma, name='trauma'),
    path('personality/', views.personality, name='personality_issue'),
    path('dissociative/', views.dissociative, name='dissociative'),
    path('eating/', views.eating, name='eating'),
    path('neurodevelop/', views.neurodevelop, name='neurodevelop'),
    path('psychotic/', views.psychotic, name='psychotic'),
    path('somatic/', views.somatic, name='somatic'),
    path('sleep/', views.sleepissue, name='sleep_issue'),
    path('impulse/', views.impulse, name='impulse'),
    path('drugs/', views.drugs, name='drugs'),
    path('neurocognit/', views.neurocognit, name='neurocognit'),
    path('self-harm/', views.selfharm, name='self_harm'),
    path('aboutus/',views.aboutus,name='aboutus'),
    path('music/',views.music,name='music'),
    path('movies/',views.movies,name='movies'),
    path('breathing/',views.breathing,name='breathing'),
    path('workout/',views.exercise,name='workout'),
    path('selfhelpbooks/',views.selfhelpbooks,name='selfhelpbooks'),
    path('schedules/',views.schedules,name='schedules')
]



