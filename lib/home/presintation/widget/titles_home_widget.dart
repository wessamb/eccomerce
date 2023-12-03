import 'package:flutter/material.dart';
Widget titles(String first,String seconde)=>Row(
  children: [
    Text(
      first,
      style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 24),
    ),
    SizedBox(
      width: 6,
    ),
    Text(
      seconde,
      style: TextStyle(
          color: Color(0xFFE91E63),
          fontWeight: FontWeight.w700,
          fontSize: 24),
    ),
  ],
);