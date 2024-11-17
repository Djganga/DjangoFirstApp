from django.shortcuts import render

# Create your views here.

from rest_framework.views import APIView
from rest_framework.response import Response



class MyFirstAPI(APIView):
    "Gang created"

    def get(self, request, format=None):
        return Response({'Name':"Ganga","Surname":"Kollipara"})
