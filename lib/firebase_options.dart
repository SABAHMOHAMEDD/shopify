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
    apiKey: 'AIzaSyDRsm3HorrdbUA5iJjOvPEUTxSszXN7Y2o',
    appId: '1:792402858997:web:3f3212a9564af6ae4246bc',
    messagingSenderId: '792402858997',
    projectId: 'shopify-65983',
    authDomain: 'shopify-65983.firebaseapp.com',
    storageBucket: 'shopify-65983.appspot.com',
    measurementId: 'G-P02Z519C49',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHWU6b1JpDZDnTjOelz34eXP2_72uOEi8',
    appId: '1:792402858997:android:7a4a869645bc02ae4246bc',
    messagingSenderId: '792402858997',
    projectId: 'shopify-65983',
    storageBucket: 'shopify-65983.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7oQ6qLpbbx8ypqGG4-8jQ2i7wscHYAEQ',
    appId: '1:792402858997:ios:d7e29c76c99e5c904246bc',
    messagingSenderId: '792402858997',
    projectId: 'shopify-65983',
    storageBucket: 'shopify-65983.appspot.com',
    iosBundleId: 'com.example.shopify',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7oQ6qLpbbx8ypqGG4-8jQ2i7wscHYAEQ',
    appId: '1:792402858997:ios:d4c1745862e88c2a4246bc',
    messagingSenderId: '792402858997',
    projectId: 'shopify-65983',
    storageBucket: 'shopify-65983.appspot.com',
    iosBundleId: 'com.example.shopify.RunnerTests',
  );
}
