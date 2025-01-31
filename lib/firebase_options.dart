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
    apiKey: 'AIzaSyCbqluUPL7tBk1CK7II1qR7iylXei1XqEc',
    appId: '1:1066186022224:web:d7504e7b5a278bfdc42055',
    messagingSenderId: '1066186022224',
    projectId: 'rent-cars-40c1b',
    authDomain: 'rent-cars-40c1b.firebaseapp.com',
    storageBucket: 'rent-cars-40c1b.firebasestorage.app',
    measurementId: 'G-GK3KXZR3JQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC0DUK7lWSeBh3_bo1smfVpoXoIp4yMTC4',
    appId: '1:1066186022224:android:9c02a1a9d175d46bc42055',
    messagingSenderId: '1066186022224',
    projectId: 'rent-cars-40c1b',
    storageBucket: 'rent-cars-40c1b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCDR-R7Bc5fPcRDU91CW_zQEDq_7e9wFD8',
    appId: '1:1066186022224:ios:8465c34868f96455c42055',
    messagingSenderId: '1066186022224',
    projectId: 'rent-cars-40c1b',
    storageBucket: 'rent-cars-40c1b.firebasestorage.app',
    iosBundleId: 'com.example.rentcars',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCDR-R7Bc5fPcRDU91CW_zQEDq_7e9wFD8',
    appId: '1:1066186022224:ios:8465c34868f96455c42055',
    messagingSenderId: '1066186022224',
    projectId: 'rent-cars-40c1b',
    storageBucket: 'rent-cars-40c1b.firebasestorage.app',
    iosBundleId: 'com.example.rentcars',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCbqluUPL7tBk1CK7II1qR7iylXei1XqEc',
    appId: '1:1066186022224:web:08f98a6ad4811f78c42055',
    messagingSenderId: '1066186022224',
    projectId: 'rent-cars-40c1b',
    authDomain: 'rent-cars-40c1b.firebaseapp.com',
    storageBucket: 'rent-cars-40c1b.firebasestorage.app',
    measurementId: 'G-1PEZ4J5ELD',
  );
}
