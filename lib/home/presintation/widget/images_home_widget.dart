import 'package:flutter/material.dart';
Widget Images()=>Stack(
  children: [
    Container(
      width: double.infinity,
      height: 350,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.only(bottomRight: Radius.circular(30)),
          image: DecorationImage(
              image: AssetImage('assets/images/Rectangle 1.png'),
              fit: BoxFit.fill)),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 180,
          height: 59,
          color: Color.fromRGBO(255, 255, 255, 0.7),
          child: Padding(
              padding: EdgeInsets.only(
                  left: 37, top: 12, bottom: 12, right: 34),
              child: Row(
                children: [
                  Text(
                    'New',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'Look',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              )),
        ),
      ),
    ),
  ],
);