// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBCwY5qROhsgX-4I6Sn-KdVduWdpWFk8Do',
    appId: '1:820312652552:web:e0edc35aefd9ba31844abd',
    messagingSenderId: '820312652552',
    projectId: 'hubaaltv-de645',
    authDomain: 'hubaaltv-de645.firebaseapp.com',
    storageBucket: 'hubaaltv-de645.appspot.com',
    measurementId: 'G-L5W44VGKSQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDvO61f2TjrWH3srhPxQuJSCi6OVi6zyAU',
    appId: '1:820312652552:android:71edcbc381432e4a844abd',
    messagingSenderId: '820312652552',
    projectId: 'hubaaltv-de645',
    storageBucket: 'hubaaltv-de645.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuijHKw-vikXa7QqJNBYcoDsNzn3DOVZg',
    appId: '1:820312652552:ios:8b8c2db04c58543b844abd',
    messagingSenderId: '820312652552',
    projectId: 'hubaaltv-de645',
    storageBucket: 'hubaaltv-de645.appspot.com',
    iosClientId:
        '820312652552-ufuou71ajqtukh3m47q2df01iid7derk.apps.googleusercontent.com',
    iosBundleId: 'com.eurosom.apps',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuijHKw-vikXa7QqJNBYcoDsNzn3DOVZg',
    appId: '1:820312652552:ios:8b8c2db04c58543b844abd',
    messagingSenderId: '820312652552',
    projectId: 'hubaaltv-de645',
    storageBucket: 'hubaaltv-de645.appspot.com',
    iosClientId:
        '820312652552-ufuou71ajqtukh3m47q2df01iid7derk.apps.googleusercontent.com',
    iosBundleId: 'com.eurosom.apps',
  );
}
