import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB1e14DURry09gxhbvB4yx8pcP9CWAhaMA",
            authDomain: "helmetdetection-365c8.firebaseapp.com",
            projectId: "helmetdetection-365c8",
            storageBucket: "helmetdetection-365c8.appspot.com",
            messagingSenderId: "186196755116",
            appId: "1:186196755116:web:ad4a6869baa8c0fe5cd509",
            measurementId: "G-W22TQVBHCM"));
  } else {
    await Firebase.initializeApp();
  }
}
