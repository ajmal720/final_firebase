import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cAppbar extends StatelessWidget with PreferredSizeWidget {
  final Size preferredSize;
  final Color bgapp;
  cAppbar({
    Key? key, required this.bgapp,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgapp,
      elevation: 0,
      leading: Image.asset('assets/logo/l-1.png'),
      title: Row(
        children: [
          const Text(
            'PLANTIFY',
            style: TextStyle(
                letterSpacing: 4,
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const SizedBox(
            width: 90,
          ),
          Row(
            children: [
              InkWell(child: Image.asset('assets/logo/bell1.png')),
              SizedBox(
                width: 20,
              ),
              InkWell(child: Image.asset('assets/logo/Menu.png')),
            ],
          )
        ],
      ),
    );
  }
}
