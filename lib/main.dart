import 'package:final_firebase/firebase_options.dart';
import 'package:final_firebase/views/checkout.dart';
import 'package:final_firebase/views/menu.dart';
import 'package:final_firebase/views/order_complete.dart';
import 'package:final_firebase/views/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: check_view(),
    );
  }
}
