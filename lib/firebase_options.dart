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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCq_0XeugiSwqju9gsiAm7bCkV3ngztc7Y',
    appId: '1:666861730462:android:807e39c69244b562ef598f',
    messagingSenderId: '666861730462',
    projectId: 'e-commerce-app-1dfcf',
    storageBucket: 'e-commerce-app-1dfcf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHBHNdv8ETXqmOtJckPqFav0z0FS1jJB0',
    appId: '1:666861730462:ios:c41ee6c2b04b581eef598f',
    messagingSenderId: '666861730462',
    projectId: 'e-commerce-app-1dfcf',
    storageBucket: 'e-commerce-app-1dfcf.appspot.com',
    androidClientId: '666861730462-dq298vghmi4qv7766e7f1stl5fu2vqnr.apps.googleusercontent.com',
    iosClientId: '666861730462-7guhn4m7rg1gkkic96t8kbf5knt4lvv6.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceApp',
  );
}
