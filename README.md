# Flutter Applications: A Repo For Flutter Practice

<p>
The purpose of this repo is to create multiple Flutter apps working with Django.
This will be done in phases:
</p>

* <b>Follow along tutorials</b>: Being a beginner, I will start with the follow along tutorials
* <b>Customly Tailored apps</b>: The custom apps that I'll be building along the process - might write some tutorials too.
# 1. Follow along tutorials.

## App One: [Integrating an API into a Flutter app](https://blog.codemagic.io/rest-api-in-flutter/)
![image](/images/app_one.png)
<p>Learn how to integrate APIs, fetch data from a public API, and use it in your Flutter app. by Abhishek Doshi </p>
<p>There are a few steps that we can follow to easily integrate an API into our Flutter app:</p>

* Step 1: Get the API URL and endpoints.
* Step 2: Add relevant packages into the app (http, dio, chopper, etc.).
* Step 3: Create a constant file that stores URLs and endpoints.
* Step 4: Create a model class to parse the JSON.
* Step 5: Create a file that handles the API call, and write specific methods to fetch and parse data.
* Step 6: Use the data in your app.

## App two: [Getting started with Flutter Event Calendar (SfCalendar)](https://help.syncfusion.com/flutter/calendar/getting-started)
<p>We are going to build and customize the calendar widget in Flutter so we can provide our users with an extremely customizable calendar with event reminders(at the precise moment we want a reminder).</p>

# 2. Self-Paced Projects
## Project: Task Management App

Technologies:
* Flutter for the frontend mobile app development.
* Django for the backend API development.
* SQLite for the database.

Steps:
### Set up the development environment:
* Install Flutter SDK and set up your preferred IDE (e.g., Visual Studio Code).
* Install Django and set up a virtual environment for Python.
### Frontend Development with Flutter:
* Create a new Flutter project using the Flutter CLI or your IDE.
* Set up the basic app structure, including screens, widgets, and navigation.
* Implement the necessary UI components for task creation, list display, and task details.
* Connect the frontend app to the backend API endpoints.
### Backend Development with Django:
* Create a new Django project using the Django CLI or your IDE.
* Design the data model for tasks and create the necessary Django models.
* Set up Django REST Framework for API development.
* Create API endpoints for task creation, retrieval, updating, and deletion.
* Implement appropriate views and serializers to handle API requests and responses.
### Connect Flutter with Django:
* Use Flutter's http package to send API requests to the Django backend.
* Implement functions to handle tasks like creating, retrieving, updating, and deleting tasks through API calls.
### Test and Debug:
* Test the app functionality on both the frontend and backend to ensure everything is working as expected.
* Debug any issues that arise during testing.
### Deployment:
* Deploy the Django backend on a server of your choice (e.g., Heroku or AWS).
* Build the Flutter app for your target platform (iOS/Android) and deploy it to the respective app stores or use other distribution methods.
### Documentation:
* Document the project, including the technologies used, project structure, and any other relevant information.
* Create a README file that provides instructions on how to set up and run the app.
