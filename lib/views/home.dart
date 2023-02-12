import 'package:final_firebase/utiles/color.dart';
import 'package:final_firebase/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: cAppbar(bgapp: forapp),
        body: TabBarView(
          children: [
            
          ],
        ),
      ),
    );
  }
}
