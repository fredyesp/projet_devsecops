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
    apiKey: 'AIzaSyCg4eaHUGIjw5f2dRyZj7UeKaH03ztkpSQ',
    appId: '1:258811640340:web:57fadbbd32de2339dc8501',
    messagingSenderId: '258811640340',
    projectId: 'chatm1ssi',
    authDomain: 'chatm1ssi.firebaseapp.com',
    storageBucket: 'chatm1ssi.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBuPws2Ko80nzyIJT3qIY7ovOxIcAnxJm8',
    appId: '1:258811640340:android:2922cbae06f979eddc8501',
    messagingSenderId: '258811640340',
    projectId: 'chatm1ssi',
    storageBucket: 'chatm1ssi.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-B_NiRUjul3TGe40xhM2LnqrPiPl-e48',
    appId: '1:258811640340:ios:f1d2aa5e216e135adc8501',
    messagingSenderId: '258811640340',
    projectId: 'chatm1ssi',
    storageBucket: 'chatm1ssi.appspot.com',
    iosBundleId: 'com.example.chatssi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-B_NiRUjul3TGe40xhM2LnqrPiPl-e48',
    appId: '1:258811640340:ios:f1d2aa5e216e135adc8501',
    messagingSenderId: '258811640340',
    projectId: 'chatm1ssi',
    storageBucket: 'chatm1ssi.appspot.com',
    iosBundleId: 'com.example.chatssi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCg4eaHUGIjw5f2dRyZj7UeKaH03ztkpSQ',
    appId: '1:258811640340:web:44effedd4d698e24dc8501',
    messagingSenderId: '258811640340',
    projectId: 'chatm1ssi',
    authDomain: 'chatm1ssi.firebaseapp.com',
    storageBucket: 'chatm1ssi.appspot.com',
  );
}