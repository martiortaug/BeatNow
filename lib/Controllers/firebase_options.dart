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
    apiKey: 'AIzaSyCZFkyvDeMj5NQ3lYTc_NWk2UDHPA2EB8w',
    appId: '1:749315745117:web:0ce591083803a14b0d34b4',
    messagingSenderId: '749315745117',
    projectId: 'auth-2f686',
    authDomain: 'auth-2f686.firebaseapp.com',
    storageBucket: 'auth-2f686.appspot.com',
    measurementId: 'G-DYFRKHSCN5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxgI8FUyL5FbIkY-4Q_31mVjVkZGLtbF4',
    appId: '1:749315745117:android:6891621ef46e58c20d34b4',
    messagingSenderId: '749315745117',
    projectId: 'auth-2f686',
    storageBucket: 'auth-2f686.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNWyMQlXtUbDtPxv0G6mi9hrWHWANhmW8',
    appId: '1:749315745117:ios:da9d82da05d994b40d34b4',
    messagingSenderId: '749315745117',
    projectId: 'auth-2f686',
    storageBucket: 'auth-2f686.appspot.com',
    iosClientId: '749315745117-hu5euib4rssck8441e16t3a6sl0ii7m2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTest1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNWyMQlXtUbDtPxv0G6mi9hrWHWANhmW8',
    appId: '1:749315745117:ios:da9d82da05d994b40d34b4',
    messagingSenderId: '749315745117',
    projectId: 'auth-2f686',
    storageBucket: 'auth-2f686.appspot.com',
    iosClientId: '749315745117-hu5euib4rssck8441e16t3a6sl0ii7m2.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTest1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCZFkyvDeMj5NQ3lYTc_NWk2UDHPA2EB8w',
    appId: '1:749315745117:web:339b59a29c5595e20d34b4',
    messagingSenderId: '749315745117',
    projectId: 'auth-2f686',
    authDomain: 'auth-2f686.firebaseapp.com',
    storageBucket: 'auth-2f686.appspot.com',
    measurementId: 'G-X7B52H1GRX',
  );
}