import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBm0B8WV-9BvzXPDRacMz1z_w2z-GTwox0",
            authDomain: "dowloadsapp.firebaseapp.com",
            projectId: "dowloadsapp",
            storageBucket: "dowloadsapp.appspot.com",
            messagingSenderId: "463064548543",
            appId: "1:463064548543:web:53b732d9f4d642af2b320a"));
  } else {
    await Firebase.initializeApp();
  }
}
