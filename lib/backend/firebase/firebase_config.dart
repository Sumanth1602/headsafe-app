import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAYLT2yQj88fr3TYg46xegsGKy2jeIdMz4",
            authDomain: "headsafe-b9a5b.firebaseapp.com",
            projectId: "headsafe-b9a5b",
            storageBucket: "headsafe-b9a5b.appspot.com",
            messagingSenderId: "149138161544",
            appId: "1:149138161544:web:3074ea3668b1e1024a443d",
            measurementId: "G-B2LHGVRVWC"));
  } else {
    await Firebase.initializeApp();
  }
}
