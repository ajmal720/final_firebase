import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_ui/properties/colors.dart';
import 'package:test_ui/properties/customwidget.dart';

class iphone_view extends StatefulWidget {
  const iphone_view({super.key});

  @override
  State<iphone_view> createState() => _iphone_viewState();
}

class _iphone_viewState extends State<iphone_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        
      leading: Image.asset("login_logo.png"),
      title: const Text("PANTIFY",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
      actions: [Row( children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(children: [
            const Icon(Icons.search,color: Colors.black,),
          const SizedBox(width: 10,),
            Image.asset("Menu.png")
          ],),
        ),
      ],)],
      backgroundColor: const Color(0xff9CE5CB),
      elevation: 0.0,
      ),
      body: Column(
        children: [
        Stack(
          children: [
          Image.asset("iphone_img.png",),
          Image.asset("lines.png"),
      const    Positioned(
            top: 20,
            left: 20,
            child: Text("Air Purifier",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)
            ),
            Positioned(
              top: 20,
              left: 110,
              child: Image.asset("hand.png")
              ),
              Positioned(
                top: 16,
                left: 240,
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                backgroundColor: Colorselect().whitecolor,
                fixedSize: const Size(80, 2),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
                  )
                ),
                 
                 child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Icon(Icons.star,size:16,color: Colorselect().favcolor,),
                  Text("4.8",style: TextStyle(color: Colorselect().favcolor,),
                  ),
                ],) ),
              ),
            const  Positioned(
                top: 60,
                left: 20,
                child: Text("Watermelon\nPeperomia",style: TextStyle(fontSize: 36,fontWeight: FontWeight.w700),)),

        const Positioned(
              top: 170,
              left: 40,
              child: Text("Price",style: TextStyle(color: Color(0xff002140),fontSize: 14,
              fontWeight:FontWeight.w500),)),

        const Positioned(
              top: 200,
              left: 40,
              child: Text("\$350",style: TextStyle(color: Color(0xff002140),fontSize: 17,
              fontWeight:FontWeight.w700),)),      

        const Positioned(
              top: 230,
              left: 40,
              child: Text("Size",style: TextStyle(color: Color(0xff002140),fontSize: 14,
              fontWeight:FontWeight.w500),)),

        const Positioned(
              top: 260,
              left: 40,
              child: Text("5” h",style: TextStyle(color: Color(0xff002140),fontSize: 17,
              fontWeight:FontWeight.w700),)),      
              
            Positioned(
              top: 330,
              left: 20,
              child: Image.asset("imo.png")),

              Positioned(
                top: 330,
                left: 90,               
                child: Image.asset("hrt.png")),

              Positioned(
                top: 134,
                left: 110,
                child: Image.asset("sage.png",height: 280,)),
                
             Positioned(
                top: 210,
                left: 110,
                child: Image.asset("crcl.png",height: 260,)),
          ],
        ),

    const    Padding(
             padding:  EdgeInsets.only(left: 40,top: 20),
             child: Align(
             alignment: Alignment.topLeft,
             child: Text("Overview",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),)),
          ),

        // ListTile(
        //   leading: Image.asset("tile_img.png"),
        //   title:  Text("250ml",style: TextStyle(color: Colorselect().favcolor,fontSize: 20,fontWeight: FontWeight.w700),),
        //   subtitle: Text("Water",style: TextStyle(color: Colorselect().blacktextcolor,fontWeight: FontWeight.w600),),
        // ),

        customiphone(lead_img:"tile_img.png")
        ],
      ),
    );
  }
}
