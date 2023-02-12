import 'package:final_firebase/utiles/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: camel_case_types
class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

// ignore: camel_case_types
class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 120, 0,0),
              child: Image.asset("assets/img_ban/e1.png",height: 120,),
            ),
            Align(alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 70, 8, 0),
              child: Image.asset("assets/img_ban/e1.png",height: 120,),
            ),
            ),

           Align(alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(170,  170, 0, 0),
              child: Image.asset("assets/img_ban/v.png",height: 120,),
            ),
            ),
          ],
        ),
      const SizedBox(height: 60,),
        Column(
          children: [
          Text("Order",style: TextStyle(letterSpacing: 4, color: green,fontSize: 36,fontWeight: FontWeight.w800),),
          Text("Recieved",style: TextStyle(letterSpacing: 4, color: green,fontSize: 36,fontWeight: FontWeight.w800),),
  const   SizedBox(height: 16,),
  const   Text("Order ID : #293092309",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
  const   SizedBox(height: 60,),
          Image.asset("assets/img_ban/m1.png",height: 120,),
        const SizedBox(height: 30,),
          // ElevatedButton(onPressed: (){},
          // style: ElevatedButton.styleFrom(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(20),
          // ),
          // backgroundColor: green,
          // fixedSize: Size(300, 48)
          // ), 
          // child:const Text("submit")),
          
         

          ],
        )

        ],
      )
    );
  }
}
