import 'package:final_firebase/widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../utiles/color.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: cAppbar(bgapp: for2app),
      body: ListView(
          // shrinkWrap: true,
          //    physics: NeverScrollableScrollPhysics(),
          
           children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/img_ban/ban-1.png'),
                        fit: BoxFit.cover)),
                width: 330,
                height: 190,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(children: [
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(right: 100, left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        suffixIcon: Image.asset(
                          'assets/logo/qr.png',
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                child: InkWell(
                  child: Container(
                    child: Image.asset('assets/logo/filter.png'),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(20)),
                    width: 57,
                    height: 55,
                  ),
                ),
              )
            ]),
            Flexible(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                height: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                color: Colors.amber,
              ),
              Container(
                height: 200,
                color: Colors.amber,
              ),
                    
                ]),
              ),
            )
        ]),
    );
  }
}
