import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_firebase/utiles/color.dart';
import 'package:final_firebase/widgets/appbar.dart';

import 'package:flutter/material.dart';

import '../widgets/customtabbar.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: cAppbar(bgapp: for2app),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: true,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                            Positioned(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage('assets/img_ban/ban-1.png'),
                                  fit: BoxFit.cover)),
                          width: 330,
                          height: 190,
                        ),
                      ),
                      
                    
                        Positioned(
                          top: 43,
                          left: 34,
                          child: Text('There’s a Plant ',style: TextStyle(color: black,
                          fontSize: 24,fontWeight: FontWeight.w700),)),
                                  Positioned(
                          top: 70,
                          left: 34,
                          child: Text('For Everyone ',style: TextStyle(color: black,
                          fontSize: 24,fontWeight: FontWeight.w700),)),
              
                      ]
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

                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 0.3,
                  // ),
                  Expanded(child: ProfileTabBarNavigation()),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: green,
          currentIndex: _currentindex,
          
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/icons/home1.png'),
                color: black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/icons/fav1.png'),
                color: black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/icons/cart.png'),
                color: black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                const AssetImage('assets/icons/acc.png'),
                color: black,
              ),
              label: '',
            ),
          ],
          onTap: (Index) {
            setState(() {
              _currentindex=Index;
            });
          },
        ));
  }
}
