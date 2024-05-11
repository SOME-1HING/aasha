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
    apiKey: 'AIzaSyCm8j0mRA8HGWTiaMVVehKqnveyeLKKq98',
    appId: '1:904980261914:web:15d977b7f9780892bb35a3',
    messagingSenderId: '904980261914',
    projectId: 'aasha-27431',
    authDomain: 'aasha-27431.firebaseapp.com',
    storageBucket: 'aasha-27431.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCEq2tXkzaA5h5U8BXNsQpYEQIFWh6ryo',
    appId: '1:904980261914:android:e35157bb9e73c06dbb35a3',
    messagingSenderId: '904980261914',
    projectId: 'aasha-27431',
    storageBucket: 'aasha-27431.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB68kARtbALg6nWB8DetXFikCjsklpnozk',
    appId: '1:904980261914:ios:17b3ff204d5bfcafbb35a3',
    messagingSenderId: '904980261914',
    projectId: 'aasha-27431',
    storageBucket: 'aasha-27431.appspot.com',
    iosClientId: '904980261914-qr9llafakntijguv0qarh8naf6sobpp0.apps.googleusercontent.com',
    iosBundleId: 'com.example.aasha',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB68kARtbALg6nWB8DetXFikCjsklpnozk',
    appId: '1:904980261914:ios:17b3ff204d5bfcafbb35a3',
    messagingSenderId: '904980261914',
    projectId: 'aasha-27431',
    storageBucket: 'aasha-27431.appspot.com',
    iosClientId: '904980261914-qr9llafakntijguv0qarh8naf6sobpp0.apps.googleusercontent.com',
    iosBundleId: 'com.example.aasha',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCm8j0mRA8HGWTiaMVVehKqnveyeLKKq98',
    appId: '1:904980261914:web:a6a2572427749280bb35a3',
    messagingSenderId: '904980261914',
    projectId: 'aasha-27431',
    authDomain: 'aasha-27431.firebaseapp.com',
    storageBucket: 'aasha-27431.appspot.com',
  );
}
