import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utiles/color.dart';

class menu_view extends StatefulWidget {
  const menu_view({super.key});

  @override
  State<menu_view> createState() => _menu_viewState();
}

class _menu_viewState extends State<menu_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: green,
      body: Container(
        // height: MediaQuery.of(context).size.height *20,
        // width: MediaQuery.of(context).size.width*6,
        child: Column(
          children: [
          
           Padding(
             padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
             child: Container(
              height: MediaQuery.of(context).size.height *0.08,
              // width: MediaQuery.of(context).size.width * 0.8,
              alignment: Alignment.bottomRight,
              child: Text("X",style: TextStyle(color: for2app,fontSize: 22),)
             ),
           ),

          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_1.png",txt: "Shop",w: 20.0),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_2.png",txt: "Plant Care",w: 24.0),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_3.png",txt: "Community",w: 24.0),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_4.png",txt: "My Account",w: 24.0),
          const  SizedBox(height: 40,),
          Rowcustom(img: "menu_img_5.png",txt: "Track Order",w: 24.0),
          const  SizedBox(height: 40,),
          Text("Get the dirt",style: TextStyle(color: for2app,fontSize: 22,fontWeight: FontWeight.bold),),
          const  SizedBox(height: 30,),
          ElevatedButton(onPressed: (){},
          style: OutlinedButton.styleFrom(
          fixedSize:const  Size(300, 48),
          backgroundColor: green,
          side: BorderSide(
          color: for2app,
          width: 2,
          )
          ),
          child: const Text("Enter Your Email")),
        const  SizedBox(height: 22,),
          Text("FAQ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: for2app),),
        const    SizedBox(height: 22,),
          Text("About US",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:for2app),),
        const  SizedBox(height: 22,),  
          Text("Contact Us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color:for2app),),
          ],
        ),
      ),
    );
  }
}
Rowcustom({img,txt,w})
{
  return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img,),
              SizedBox(width: w,),
              Text(txt,style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color:for2app),
              ),
            ],
);
}