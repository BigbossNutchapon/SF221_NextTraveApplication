import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCJH3uWil_fAuPIhrMwJIcWshIYgu6GUSY",
            authDomain: "nexttravel-tu.firebaseapp.com",
            projectId: "nexttravel-tu",
            storageBucket: "nexttravel-tu.appspot.com",
            messagingSenderId: "444396768210",
            appId: "1:444396768210:web:10a2b63da6f0eabe54160b",
            measurementId: "G-WF2JVM64GK"));
  } else {
    await Firebase.initializeApp();
  }
}
