from django.shortcuts import render,HttpResponse,redirect
import subprocess
from django.contrib import messages
# Create your views here.
def home(request):
    if request.method=='POST':
        smile=request.POST['smile']
        with open("newapp/media/scripts/ymdb.smi", "w") as text_file:
            text_file.write(smile)
        subprocess.call(['bash', 'newapp/media/scripts/smile_to_mol.sh'])
        messages.success(request, 'Smile file has been converted into mol2 format')
        return redirect('/')
    return render(request,'index.html')

def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')

def login(request):
    return render(request,'login.html')

def signup(request):
    return render(request,'signup.html')
