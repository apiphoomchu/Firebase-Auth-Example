# Quick Setup: Firebase Authentication in iOS

This guide provides quick steps to set up Firebase Authentication with email and password sign-in for an iOS project using Swift Package Manager.

## Prerequisites

- Xcode (latest version recommended)
- An Apple Developer account
- A Firebase account

## Setup Steps

### 1. Create a Firebase Project

1. Go to the [Firebase Console](https://console.firebase.google.com/).
2. Click "Add project" and follow the setup wizard.
3. Once created, click "Add app" and select iOS.
4. Enter your app's bundle ID.
5. Download the `GoogleService-Info.plist` file.

### 2. Add GoogleService-Info.plist to Your Xcode Project

1. Drag the downloaded `GoogleService-Info.plist` into your Xcode project navigator.
2. Make sure "Copy items if needed" is checked and it's added to all targets.

### 3. Install Firebase SDK with Swift Package Manager

1. In Xcode, go to File > Add Packages.
2. Enter the Firebase iOS SDK repository URL: `https://github.com/firebase/firebase-ios-sdk`
3. Select "FirebaseAuth" from the list of package products.
4. Click "Add Package".

### 4. Configure Firebase in Your App

Add the following to your `AppDelegate.swift`:

```swift
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
```

### 5. Enable Email/Password Sign-In in Firebase Console

1. In the Firebase Console, go to Authentication > Sign-in method.
2. Enable the "Email/Password" sign-in provider.

## Basic Usage

Here's a simple example of how to sign in a user with email and password:

```swift
import FirebaseAuth

Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
    if let error = error {
        print("Error signing in: \(error.localizedDescription)")
    } else {
        print("User signed in successfully")
        // Navigate to the main part of your app
    }
}
```

For more detailed information, refer to the [Firebase Authentication documentation](https://firebase.google.com/docs/auth).
