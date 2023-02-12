import 'package:final_firebase/auth/signin.dart';
import 'package:final_firebase/utiles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Positioned(
                    bottom: 50, child: Image.asset('assets/img_ban/b-1.png')),
              ),
              Positioned(top: 70,
               left: 50
              , child: Image.asset('assets/img_ban/b-2.png')),
              Positioned(child: Image.asset('assets/img_ban/b-3.png')),
              Positioned(
                  bottom: 70,
                  left: 90,
                  child: Text(
                    'Plantify',
                    style: TextStyle(
                        fontSize: 40, letterSpacing: 10, color: Colors.white),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'GET READY TO BE HYGENIC',
              style: TextStyle(fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Jelajahi AiLearn untuk menambah kemampuanmu'),
          ),
          Text('dalam mengoperasikan Adobe Illustrator'),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LogIn();
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: 363,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: green),
                height: 48,
                child: Center(child: Text('GET STARTED')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
