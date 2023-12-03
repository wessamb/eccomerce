import 'package:flutter/material.dart';
Widget AppBarHome(double x)=> Padding(
  padding: EdgeInsets.symmetric(horizontal: x,vertical: 0),
  child: Row(
    children: [
      Image(image: AssetImage('assets/images/logo 1.png')),
      Spacer(),
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(40),
        ),
        child: IconButton(
            onPressed: () {
              Drawer();
            },
            icon: Icon(
              Icons.menu,
              size: 25,
              color: Colors.white,
            )),
      )
    ],
  ),
);