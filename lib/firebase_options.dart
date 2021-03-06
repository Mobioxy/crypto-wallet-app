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
    apiKey: 'AIzaSyDfHVuwTwcQGqrCObPbp3WWM8YhIg0QwM8',
    appId: '1:78404688814:web:1f29f6c1572c786b62463f',
    messagingSenderId: '78404688814',
    projectId: 'mobioxy-apps',
    authDomain: 'mobioxy-apps.firebaseapp.com',
    storageBucket: 'mobioxy-apps.appspot.com',
    measurementId: 'G-DVZVZNXN5E',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDgNvXWAig8SJIrwOECbufvh-0GaIwae0s',
    appId: '1:78404688814:android:f0642f57d66c5a6e62463f',
    messagingSenderId: '78404688814',
    projectId: 'mobioxy-apps',
    storageBucket: 'mobioxy-apps.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4tSrcQmYCDQEJQ4OvFg3ekGwhkn1DCUA',
    appId: '1:78404688814:ios:8ad8cb1dba18500762463f',
    messagingSenderId: '78404688814',
    projectId: 'mobioxy-apps',
    storageBucket: 'mobioxy-apps.appspot.com',
    iosClientId: '78404688814-jb3k3chiv3a1pvlvjetllj0oifhm659a.apps.googleusercontent.com',
    iosBundleId: 'com.example.cryptoWalletApp',
  );
}
