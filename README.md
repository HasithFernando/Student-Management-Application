# Student Management App (Firebase)

This is a simple Flutter application integrated with Firebase to demonstrate **CRUD** (Create, Read, Update, Delete) operations. The app consists of four pages—Create, Read, Delete, and Update—allowing users to manage student records with three input fields: Name, ID, and Degree.

## Features

- **Create:** Add a new student record to Firebase.
- **Read:** Retrieve and display all student records from Firebase.
- **Update:** Modify an existing student record.
- **Delete:** Remove a student record from Firebase.

## Technologies Used

- Flutter
- Firebase Firestore (Database)

## Installation & Setup

### Prerequisites

- Flutter installed ([Install Flutter](https://flutter.dev/docs/get-started/install))
- Firebase account ([Set up Firebase](https://firebase.google.com/))
- A registered Firebase project with Firestore enabled

### Steps

1. Clone the repository:

   ```sh
   git clone https://github.com/HasithFernando/Student-Management-Application.git
   ```

2. Navigate to the project directory:

   ```sh
   cd Student-Management-Application
   ```

3. Install dependencies:

   ```sh
   flutter pub get
   ```

4. Set up Firebase:
   - Add your `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) in the respective folders.
   - Enable Firestore in the Firebase Console.

5. Run the application:

   ```sh
   flutter run
   ```

## Project Structure

```
student-management-application/
├── lib/
│   ├── main.dart
│   ├── data/
│   │   ├── datasource.dart
│   ├── models/
│   │   ├── student.dart
│   ├── screens/
│   │   ├── createpage.dart
│   │   ├── deletepage.dart
│   │   ├── readpage.dart
│   │   ├── update page.dart
│   ├── widgets/
│   │   ├── student_card.dart
├── pubspec.yaml
```

