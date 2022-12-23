import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC5fHx8gMnhI1c2kZzdp1C1dWvRxdrwkKE",
            authDomain: "fintech22-c2bbf.firebaseapp.com",
            projectId: "fintech22-c2bbf",
            storageBucket: "fintech22-c2bbf.appspot.com",
            messagingSenderId: "460072309622",
            appId: "1:460072309622:web:4eda59c565fe029c8c2057",
            measurementId: "G-XTEE5Q5XGT"));
  } else {
    await Firebase.initializeApp();
  }
}
