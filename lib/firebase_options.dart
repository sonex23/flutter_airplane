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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyB-8zxjjsZxek92sBoVw9ghZIaC4H_jM2k',
    appId: '1:627700796408:web:e2c571db84318e05e9640d',
    messagingSenderId: '627700796408',
    projectId: 'airplane-66344',
    authDomain: 'airplane-66344.firebaseapp.com',
    storageBucket: 'airplane-66344.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbjhy1ghtkPW_izijCZJNjvZIYpYV-z8U',
    appId: '1:627700796408:android:c4d0673045e61c46e9640d',
    messagingSenderId: '627700796408',
    projectId: 'airplane-66344',
    storageBucket: 'airplane-66344.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCm8G0eRH0NKV6Ii3ku6wtTyF6xj9WcouA',
    appId: '1:627700796408:ios:a95441fef6aa7b01e9640d',
    messagingSenderId: '627700796408',
    projectId: 'airplane-66344',
    storageBucket: 'airplane-66344.appspot.com',
    iosBundleId: 'com.sonex23.flutterAirplane',
  );
}
