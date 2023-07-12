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
    apiKey: 'AIzaSyBaAAf4DB53Yfh1ue--Mnlf0sRMdaexupg',
    appId: '1:300322823599:web:d2aaeba5c4656af70b235a',
    messagingSenderId: '300322823599',
    projectId: 'fir-app-a435f',
    authDomain: 'fir-app-a435f.firebaseapp.com',
    storageBucket: 'fir-app-a435f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHMKXgdRp38jc7fTHfYZp-sE0IMuuCw24',
    appId: '1:300322823599:android:641c6d5492ca760f0b235a',
    messagingSenderId: '300322823599',
    projectId: 'fir-app-a435f',
    storageBucket: 'fir-app-a435f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4idJcacgFi3C4hY-nwAVoYj-vSKJromA',
    appId: '1:300322823599:ios:70431e80a866a9540b235a',
    messagingSenderId: '300322823599',
    projectId: 'fir-app-a435f',
    storageBucket: 'fir-app-a435f.appspot.com',
    iosClientId: '300322823599-sub4ef95561upm1egtnpoahgqn6emosg.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4idJcacgFi3C4hY-nwAVoYj-vSKJromA',
    appId: '1:300322823599:ios:ef85d50e747be88c0b235a',
    messagingSenderId: '300322823599',
    projectId: 'fir-app-a435f',
    storageBucket: 'fir-app-a435f.appspot.com',
    iosClientId: '300322823599-gsu15kcdn37prvbv3tkviig45knrt5uh.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseApp.RunnerTests',
  );
}