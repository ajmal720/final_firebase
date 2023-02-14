import 'package:final_firebase/firebase_options.dart';
import 'package:final_firebase/views/checkout.dart';
import 'package:final_firebase/views/menu.dart';
import 'package:final_firebase/views/order_complete.dart';
import 'package:final_firebase/views/dasboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'auth/signin.dart';
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
    return  MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.philosopher().fontFamily),
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}
