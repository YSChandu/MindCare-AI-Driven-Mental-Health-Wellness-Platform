from django.shortcuts import render,redirect
from django.contrib.auth.models import User
from django.contrib import auth
from django.contrib import messages
from .models import *
from django.contrib.auth.decorators import login_required
from .forms import ProfileForm
from django.db import connection
from django.http import JsonResponse
from django.utils import timezone
from django.contrib.auth import authenticate, login as auth_login, logout as auth_logout
import logging
import openai
import os 
from dotenv import load_dotenv
load_dotenv()


def assess_support_level(message):
    """
    Assess the support level based on the message content.
    
    """
    # Placeholder implementation, replace with actual logic
    if "urgent" in message.lower() or "help" in message.lower():
        return "high_risk"
    return "low_risk"

def ask_openai(message):
    """
    Generate a response using OpenAI's ChatCompletion API
    """
    try:
        # Set your API key - ideally this should be in environment variables
        openai.api_key = os.getenv('OPENAI_API_KEY')  
        
        # Updated to use the current client interface
        response = openai.chat.completions.create(
            model="gpt-3.5-turbo",
            messages=[
                {
                    "role": "system", 
                    "content": "You are a compassionate, empathetic mental health support assistant. " 
                               "Provide supportive, understanding responses. Be kind, non-judgmental, " 
                               "and offer gentle guidance when appropriate."
                },
                {"role": "user", "content": message}
            ]
        )
        
        # Extract the response from the assistant - updated access pattern
        bot_response = response.choices[0].message.content.strip()
        return bot_response
    
    except Exception as e:
        logging.error(f"OpenAI API error: {e}")
        return "I'm here to listen. Would you like to share more about how you're feeling?"

@login_required
def chatbot(request):
    """
    Handle chatbot interactions with chat history management
    """
    # Clear existing chat history on page refresh/load
    if request.method == 'GET':
        Chat.objects.filter(user=request.user).delete()
    
    # Handle POST requests for sending messages
    if request.method == 'POST':
        message = request.POST.get('message', '').strip()
        
        if not message:
            return JsonResponse({
                'message': '', 
                'response': 'I noticed you sent an empty message. Would you like to share something?',
                'support_level': 'low_risk'
            })
        
        # Assess support level
        support_level = assess_support_level(message)
        
        # Generate response using OpenAI
        try:
            response = ask_openai(message)
            
            # Create and save chat entry
            chat = Chat(
                user=request.user, 
                message=message, 
                response=response, 
                support_level=support_level,
                created_at=timezone.now()
            )
            chat.save()
            
            return JsonResponse({
                'message': message, 
                'response': response,
                'support_level': support_level
            })
        
        except Exception as e:
            logging.error(f"Chatbot error: {e}")
            return JsonResponse({
                'message': message, 
                'response': 'Sorry, I am experiencing some technical difficulties.',
                'support_level': 'low_risk'
            }, status=500)
    
    # Render chatbot template
    return render(request, 'chatbot.html')


def logout(request):
    """
    Custom logout view with chat history clearing
    """
    # Clear chat history for the current user
    if request.user.is_authenticated:
        Chat.objects.filter(user=request.user).delete()
    
    # Standard logout process
    auth_logout(request)
    
    # Redirect to login page
    messages.success(request, 'You have been logged out successfully.')
    return redirect('login')

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        
        # Authenticate user
        user = authenticate(request, username=username, password=password)
        
        if user is not None:
            # Clear previous chat history for the user
            Chat.objects.filter(user=user).delete()
            
            # Log in the user
            auth_login(request, user)
            
            # Redirect to home or desired page
            messages.success(request, 'You have successfully logged in.')
            return redirect('home')
        else:
            # Return an 'invalid login' error message
            messages.error(request, 'Invalid username or password.')
    
    return render(request, 'login.html')


def home(request):
    return render(request ,'home.html')

def my_profile(request):
    user = request.user 
    
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM myapp_profile;")
        rows = cursor.fetchall()
        
    results = [{'1': row[0], '2': row[2], '3': row[3] , '4':row[4]} for row in rows]
    context = {
        'user': user,
        'result':results
    }
    
    return render(request, 'myprofile.html', context)


def register(request):
    if request.method =='POST':
        first_name=request.POST['first_name']
        last_name=request.POST['last_name']
        username=request.POST['username']
        email=request.POST['email']
        password=request.POST['password']
        password2=request.POST['password2']
        
        
        if password == password2:
            if User.objects.filter(username=username).exists():
                messages.info(request,"username is already exists")
                return redirect('register')
            elif User.objects.filter(email=email).exists():
                messages.info(request,"email is already exists")
                return redirect('register')
            else:
                user=User.objects.create_user(username=username,email=email,first_name=first_name,last_name=last_name,password=password)
                user.save();
                return redirect('login')
            
        else:
            messages.info(request,"passwords are not the same")
            return redirect('register')
    else:
        return render(request,'register.html')
    
    
def login(request):
    if request.method=="POST":
        username = request.POST['username']
        password = request.POST['password']
        
        user = auth.authenticate(username=username,password=password)

        if user is not None:
            auth.login(request,user)
            return redirect('/')
        else:
            messages.info(request,'Credentials Invalid')
            return redirect('login')
        
    else:
       return render(request,'login.html')


@login_required
def edit_profile(request):
    if not hasattr(request.user, 'profile'):
        Profile.objects.create(user=request.user)
    
    profile = request.user.profile

    if request.method == 'POST':
        form = ProfileForm(request.POST, request.FILES, instance=profile)
        if form.is_valid():
            form.save()
            return redirect('profile')  # Redirect to the profile page after saving
    else:
        form = ProfileForm(instance=profile)

    return render(request, 'edit_profile.html', {'form': form})

def logout(request):
    auth.logout(request)
    return redirect('/')

def resources(request):
    return render(request ,'resources.html')

def yoga(request):
    return render(request,'yoga.html')

def issues(request):
    return render(request,'issues.html')

def anxietyissue(request):
    return render(request,'anxiety_issue.html')

def music(request):
    return render(request,"music.html")

def mooddisorder(request):
    return render(request,'mood_issue.html')

def OCD(request):
    return render(request,'OCD.html')

def trauma(request):
    return render(request,'trauma.html')

def personality(request):
    return render(request,'personality_issue.html')

def dissociative(request):
    return render(request,'dissociative.html')

def eating(request):
    return render(request,'eating.html')

def neurodevelop(request):
    return render(request,'neurodevelop.html')

def psychotic(request):
    return render(request,'psychotic.html')

def somatic(request):
    return render(request,'somatic.html')

def sleepissue(request):
    return render(request,'sleep_issue.html')

def impulse(request):
    return render(request,'impulse.html')

def drugs(request):
    return render(request,'drugs.html')

def neurocognit(request):
    return render(request,'neurocognit.html')

def selfharm(request):
    return render(request,'self_harm.html')

def aboutus(request):
    return render(request,'about.html')

def selfhelpbooks(request):
    return render(request,'selfhelp_books.html')

def exercise(request):
    return render(request,'workout.html')

def breathing(request):
    return render(request,'breathing.html')

def movies(request):
    return render(request,'movies.html')

def schedules(request):
    return render(request,'Schedule.html')
