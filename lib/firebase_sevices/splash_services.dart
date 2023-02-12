import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../auth/signin.dart';

class SplashServices {
  void isLogin(BuildContext context){
    Timer(const Duration( seconds: 0), () => Navigator.push(context, MaterialPageRoute(builder: ((context) => LogIn()))));
  }
  
}