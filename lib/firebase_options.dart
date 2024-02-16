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
    apiKey: 'AIzaSyBeIjwVUFr50rXqczG3c_5bSJYwONA_B-I',
    appId: '1:586001961067:web:5ec44e4c14c898fa65a12e',
    messagingSenderId: '586001961067',
    projectId: 'tiktok-clone-a59b4',
    authDomain: 'tiktok-clone-a59b4.firebaseapp.com',
    storageBucket: 'tiktok-clone-a59b4.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQYxqQx4-FJkGMcFEEm3PgRkqOE3wZtCg',
    appId: '1:586001961067:android:dd9bad6a1cadfcc665a12e',
    messagingSenderId: '586001961067',
    projectId: 'tiktok-clone-a59b4',
    storageBucket: 'tiktok-clone-a59b4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2xaF59bjOyxoFYAFupfouf3Qth5A45PE',
    appId: '1:586001961067:ios:43a3e87b63a7801365a12e',
    messagingSenderId: '586001961067',
    projectId: 'tiktok-clone-a59b4',
    storageBucket: 'tiktok-clone-a59b4.appspot.com',
    iosBundleId: 'com.example.TiktokCloneApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2xaF59bjOyxoFYAFupfouf3Qth5A45PE',
    appId: '1:586001961067:ios:98cf9349241bf2d665a12e',
    messagingSenderId: '586001961067',
    projectId: 'tiktok-clone-a59b4',
    storageBucket: 'tiktok-clone-a59b4.appspot.com',
    iosBundleId: 'com.example.TiktokCloneApp.RunnerTests',
  );
}