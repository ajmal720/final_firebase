import 'package:final_firebase/utiles/color.dart';
import 'package:final_firebase/widgets/card.dart';
import 'package:flutter/material.dart';

class ProfileTabBarNavigation extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: kArtwork),
    const Tab(text: kPastJobs),
    const Tab(
      text: kPastJobs1,
    ),
    const Tab(
      text: kPastJobs2,
    ),
    const Tab(
      text: kPastJobs3,
    ),
  ];

  ProfileTabBarNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: TabBar(
          tabs: myTabs,
          labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          unselectedLabelColor: black,
          labelColor: green,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        body: TabBarView(
            //   physics:  NeverScrollableScrollPhysics(),
            children: myTabs.map((Tab tab) {
          final String label = tab.text!.toLowerCase();
          return ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Cart(
                    bgcolor: plantb1,
                    pro: 'Pro',
                    pname: 'ajmal',
                    price: '\$400',
                    plantimg: 'assets/product_images/p1.png'),
              );
            },
          );
        }).toList()),
      ),
    );
  }
}

const String kArtwork = "Top Pick";
const String kPastJobs = "Indoor";
const String kPastJobs1 = "Outdoor";
const String kPastJobs2 = "Seeds";
const String kPastJobs3 = "Plants";
const EdgeInsets kPaddingTabBar = EdgeInsets.all(12.0);
// const Color kLightGrey = Colors.grey;
