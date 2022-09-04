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
    apiKey: 'AIzaSyBvC4hgZuDMefS0elKCYO58hxy2KMRufHU',
    appId: '1:900879340348:web:d59afb289900598f82c439',
    messagingSenderId: '900879340348',
    projectId: 'flutter3fire20220716',
    authDomain: 'flutter3fire20220716.firebaseapp.com',
    storageBucket: 'flutter3fire20220716.appspot.com',
    measurementId: 'G-BK72G2TRPE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBssbZiCZEzXc7Yp4Pk1UAY5WD26gVh4Rs',
    appId: '1:900879340348:android:22a59ee3683edb0182c439',
    messagingSenderId: '900879340348',
    projectId: 'flutter3fire20220716',
    storageBucket: 'flutter3fire20220716.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC30MjaJmvUkouxGKflpwwWrUF81VVau_g',
    appId: '1:900879340348:ios:90152329b20169b682c439',
    messagingSenderId: '900879340348',
    projectId: 'flutter3fire20220716',
    storageBucket: 'flutter3fire20220716.appspot.com',
    iosClientId: '900879340348-57dbam5d0b6quqo7seqkksv7np64ogln.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutter3firebase220716',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC30MjaJmvUkouxGKflpwwWrUF81VVau_g',
    appId: '1:900879340348:ios:90152329b20169b682c439',
    messagingSenderId: '900879340348',
    projectId: 'flutter3fire20220716',
    storageBucket: 'flutter3fire20220716.appspot.com',
    iosClientId: '900879340348-57dbam5d0b6quqo7seqkksv7np64ogln.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutter3firebase220716',
  );
}