import 'package:final_firebase/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



import '../utiles/color.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:cAppbar(bgapp: plantb1),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
            //    height: MediaQuery.of(context).size.height * 0.50,
                color: Colors.white,
              ),
              Positioned(
                child: Image.asset(
                  'assets/images/detailproduct_green_ rectangle.png',
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  bottom: 20,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image(
                        image: AssetImage(
                            'assets/images/detailproduct_circle.png')),
                  )),
              Positioned(
                  child: Container(
                alignment: Alignment.center,
                child: Image(
                    image: AssetImage(
                        'assets/images/detailproduct small circle.png')),
              )),
              Positioned(
                  left: 50,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Air Purifier",
                            style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w600,
                                color: AppColors.app_black_Color),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Image(
                              image: AssetImage(
                                  'assets/images/detailProduct hand.png')),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Image(image: AssetImage('assets/images/rating .png')),
                        ],
                      )
                    ],
                  )),
              Positioned(
                  top: 40,
                  left: 50,
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Watermelon\nPeperomia",
                        style: TextStyle(
                            wordSpacing: 2,
                            letterSpacing: 3,
                            fontWeight: FontWeight.w700,
                            fontSize: 38,
                            color: AppColors.app_black_Color),
                      ))),
              Positioned(
                  top: 170,
                  left: 50,
                  child: Text(
                    "PRICE",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.app_black_Color),
                  )),
              Positioned(
                  top: 190,
                  left: 50,
                  child: Text(
                    "350",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColors.app_black_Color),
                  )),
              Positioned(
                  top: 250,
                  left: 50,
                  child: Text(
                    "SIZE",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: AppColors.app_black_Color),
                  )),
              Positioned(
                  top: 270,
                  left: 50,
                  child: Text(
                    "5” h",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.app_black_Color,
                    ),
                  )),
              Positioned(
                  bottom: -10,
                  left: 50,
                  child: Image(
                      image:
                          AssetImage('assets/images/detailproduct_add.png'))),
              Positioned(
                  bottom: 10,
                  left: 140,
                  child: Image(
                      image: AssetImage('assets/images/black heart.png'))),
              Positioned(
                  bottom: 0,
                  left: 70,
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.39,
                      width: MediaQuery.of(context).size.width * 1,
                      child:
                          Image(image: AssetImage('assets/images/sage.png')))),
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: AppColors.app_black_Color),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child:
                            Image(image: AssetImage('assets/images/drop.png')),
                      ),
                      title: Text(
                        '250ml',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: AppColors.app_Green_Color),
                      ),
                      subtitle: Text(
                        'WATER',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9,
                            color: AppColors.app_black_Color),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child:
                            Image(image: AssetImage('assets/images/sun.png')),
                      ),
                      title: Text(
                        '35-40%',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: AppColors.app_Green_Color),
                      ),
                      subtitle: Text(
                        'Light',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9,
                            color: AppColors.app_black_Color),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Image(
                            image: AssetImage('assets/images/fertilizer.png')),
                      ),
                      title: Text(
                        '250gm',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: AppColors.app_Green_Color),
                      ),
                      subtitle: Text(
                        'Fertilizer',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9,
                            color: AppColors.app_black_Color),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Text(
                                "Plant Bio",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: AppColors.app_black_Color),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Text(
                                "No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: AppColors.app_black_Color),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, top: 20, right: 50),
                          child: Column(
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            "assets/images/video.png")),
                                    Image(
                                        image: AssetImage(
                                            'assets/images/image 29.png')),
                                    Image(
                                        image: AssetImage(
                                            'assets/images/image 27.png')),
                                    Image(
                                        image: AssetImage(
                                            "assets/images/video.png")),
                                    Image(
                                        image: AssetImage(
                                            'assets/images/image 29.png')),
                                    Image(
                                        image: AssetImage(
                                            'assets/images/image 27.png')),
                                    Image(
                                        image: AssetImage(
                                            "assets/images/video.png")),
                                    Image(
                                        image: AssetImage(
                                            'assets/images/image 29.png')),
                                    Image(
                                        image: AssetImage(
                                            'assets/images/image 27.png')),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
