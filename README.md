# my_first_widget

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Swipe to Delete App
## Widget Description
The Dismissible widget in Flutter allows users to dismiss a list item by swiping it. This demo uses it to delete tasks from a simple to-do list.

## Features
- Displays a list of everyday tasks.
- Allows users to swipe right to delete a task.
- Shows a red background with a delete icon.
- Displays a confirmation message after deletion.
## Technologies Used
- Flutter
- Dart
- Material Design
## How to Run the App
1. Install Flutter and set up your development environment.
2. Clone or download this repository.
3. Open the project folder in your terminal.
## Run:
- flutter pub get
- flutter run
## Three Widget Properties
## 1. key
- Purpose: Uniquely identifies each list item.
- Used value: ValueKey(item)
- What it changes: Helps Flutter identify which item is being dismissed when the list changes.
Why use it: It prevents Flutter from confusing list items during updates.
## 2. background
- Purpose: Defines the background displayed when an item is swiped.
- Used value: A red container with a white delete icon.
- What it changes: Displays a red background and delete icon behind the task.
Why use it: It gives users a clear visual indication that the task can be deleted.
## 3. direction
- Purpose: Controls the direction in which an item can be dismissed.
- Used value: DismissDirection.startToEnd
- What it changes: Allows the user to swipe from left to right.
- Why use it: It makes the deletion gesture consistent and easy to understand.

## What I Learned
In this project, I learned how to use the Dismissible widget to remove tasks from a list. I also learned how setState() updates the interface and how SnackBar displays a message after a task is deleted.

