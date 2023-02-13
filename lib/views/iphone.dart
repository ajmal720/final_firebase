import 'dart:html';

import 'package:final_firebase/utiles/color.dart';
import 'package:final_firebase/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class iphone_view extends StatefulWidget {
  const iphone_view({super.key});

  @override
  State<iphone_view> createState() => _iphone_viewState();
}

class _iphone_viewState extends State<iphone_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:cAppbar(bgapp: green),
       body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/img_ban/iphone_img.png",
                  ),
                  Image.asset("assets/img_ban/lines.png"),
                  const Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        "Air Purifier",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      )),
                  Positioned(
                      top: 20, left: 110, child: Image.asset("assets/img_ban/hand.png")),
                  Positioned(
                    top: 16,
                    left: 240,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: for2app,
                            fixedSize: const Size(80, 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color:green,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                color: green,
                              ),
                            ),
                          ],
                        )),
                  ),
                  const Positioned(
                      top: 60,
                      left: 20,
                      child: Text(
                        "Watermelon\nPeperomia",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.w700),
                      )),
                  const Positioned(
                      top: 170,
                      left: 40,
                      child: Text(
                        "Price",
                        style: TextStyle(
                            color: Color(0xff002140),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                  const Positioned(
                      top: 200,
                      left: 40,
                      child: Text(
                        "\$350",
                        style: TextStyle(
                            color: Color(0xff002140),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )),
                  const Positioned(
                      top: 230,
                      left: 40,
                      child: Text(
                        "Size",
                        style: TextStyle(
                            color: Color(0xff002140),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      )),
                  const Positioned(
                      top: 260,
                      left: 40,
                      child: Text(
                        "5” h",
                        style: TextStyle(
                            color: Color(0xff002140),
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )),
                  Positioned(top: 330, left: 20, child: Image.asset("imo.png")),
                  Positioned(top: 330, left: 90, child: Image.asset("hrt.png")),
                  Positioned(
                      top: 134,
                      left: 110,
                      child: Image.asset(
                        "sage.png",
                        height: 280,
                      )),
                  Positioned(
                      top: 210,
                      left: 110,
                      child: Image.asset(
                        "assets/img_ban/crcl.png",
                        height: 260,
                      )),
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Overview",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    )),
              ),

              Row(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 60,
                      ),
                      Image.asset('assets/img_ban/tile_img1.png'),
                      Column(
                        children: const [
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            '250ml',
                            style: TextStyle(
                                color: Color(0xff00D986A),
                                height: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Water',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 60,
                      ),
                      Image.asset('assets/img_ban/tile_img2.png'),
                      Column(
                        children: const [
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            '35-40%',
                            style: TextStyle(
                                color: Color(0xff00D986A),
                                height: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Light',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 60,
                      ),
                      Image.asset('assets/img_ban/dot.png'),
                      Column(
                        children: const [
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            '250gm',
                            style: TextStyle(
                                color: Color(0xff00D986A),
                                height: 2,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Fertilizer',
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              const Padding(
                padding: EdgeInsets.only(left: 30, top: 20),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Plant Bio",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    )),
              ),

              const Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Text(
                    "No green thumb required to keep our artificial\nwatermelon peperomia plant looking lively and\nlush anywhere you place it."),
              ),

              /////// break

// Container(
//   height: 100,
//   decoration: BoxDecoration(
//     image: DecorationImage(image: AssetImage("prd_img1.png")
//     ),
// borderRadius: BorderRadius.circular(100)
//   ),
// ),

              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0),
                          borderRadius:
                              BorderRadius.circular(10), //<-- SEE HERE
                        ),
                        child: Image.asset(
                          'assets/img_ban/prd_img1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 20,
                          left: 16,
                          child: Image.asset(
                            "assets/img_ban/dld_img.png",
                            fit: BoxFit.cover,
                            height: 60,
                          )),
                    ],
                  ),

                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(10), //<-- SEE HERE
                    ),
                    child: Image.asset('assets/img_ban/prd_img2.png'),
                  ),

                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(10), //<-- SEE HERE
                    ),
                    child: Image.asset('assets/img_ban/prd_img3.png'),
                  ),
// Image.asset("prd_img2.png"),
// Image.asset("prd_img3.png"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
