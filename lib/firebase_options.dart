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
    apiKey: 'AIzaSyBB2i0ypt6kMAvFNCO4Jz5teaAo1_Q7dgQ',
    appId: '1:149178116938:web:a5be8ba9775614a5daefb3',
    messagingSenderId: '149178116938',
    projectId: 'wa-project-368b0',
    authDomain: 'wa-project-368b0.firebaseapp.com',
    storageBucket: 'wa-project-368b0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDaMr_aHMuNW8uHrjMDRPmopDkwFU_5ZCU',
    appId: '1:149178116938:android:2e4688a1ceff9029daefb3',
    messagingSenderId: '149178116938',
    projectId: 'wa-project-368b0',
    storageBucket: 'wa-project-368b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBhP98F_xGeBtIqta-GtSddafBPO8PTllg',
    appId: '1:149178116938:ios:de14461453bf1084daefb3',
    messagingSenderId: '149178116938',
    projectId: 'wa-project-368b0',
    storageBucket: 'wa-project-368b0.appspot.com',
    iosClientId: '149178116938-2oeh6osuoktdg52in1l3jk8ujvb2l6ih.apps.googleusercontent.com',
    iosBundleId: 'com.example.myprojectapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBhP98F_xGeBtIqta-GtSddafBPO8PTllg',
    appId: '1:149178116938:ios:de14461453bf1084daefb3',
    messagingSenderId: '149178116938',
    projectId: 'wa-project-368b0',
    storageBucket: 'wa-project-368b0.appspot.com',
    iosClientId: '149178116938-2oeh6osuoktdg52in1l3jk8ujvb2l6ih.apps.googleusercontent.com',
    iosBundleId: 'com.example.myprojectapp',
  );
}
