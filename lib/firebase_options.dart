// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyAltZQD0Zh4wedKwyCbPDAFaeJLdLlwPFs',
    appId: '1:924767207122:web:d43e98383ad7847ff3770b',
    messagingSenderId: '924767207122',
    projectId: 'task-management-89884',
    authDomain: 'task-management-89884.firebaseapp.com',
    storageBucket: 'task-management-89884.firebasestorage.app',
    measurementId: 'G-Q8P18RFL2E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwBelNIPuZjRPT0A5QPIA6jMnz4rDZZBI',
    appId: '1:924767207122:android:63841601238e5bd1f3770b',
    messagingSenderId: '924767207122',
    projectId: 'task-management-89884',
    storageBucket: 'task-management-89884.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD22ysZeU63M2xY2D4MZ_10On6-1tcndfs',
    appId: '1:924767207122:ios:d01984a34c7b8724f3770b',
    messagingSenderId: '924767207122',
    projectId: 'task-management-89884',
    storageBucket: 'task-management-89884.firebasestorage.app',
    iosBundleId: 'com.example.taskManagement',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD22ysZeU63M2xY2D4MZ_10On6-1tcndfs',
    appId: '1:924767207122:ios:d01984a34c7b8724f3770b',
    messagingSenderId: '924767207122',
    projectId: 'task-management-89884',
    storageBucket: 'task-management-89884.firebasestorage.app',
    iosBundleId: 'com.example.taskManagement',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAltZQD0Zh4wedKwyCbPDAFaeJLdLlwPFs',
    appId: '1:924767207122:web:95cb0e7f23c6e834f3770b',
    messagingSenderId: '924767207122',
    projectId: 'task-management-89884',
    authDomain: 'task-management-89884.firebaseapp.com',
    storageBucket: 'task-management-89884.firebasestorage.app',
    measurementId: 'G-GDJ0N0TEMP',
  );
}
