import 'package:flutter/material.dart';
Widget ImagesCategories(String Assets,String TEXT)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [

    Container(

      height: 105,

      width: 105,

      margin: EdgeInsets.only(right: 10),

      decoration: BoxDecoration(

          boxShadow: [

            BoxShadow(    color: Colors.grey, // Set the shadow color

              blurRadius: 0.0, // Set the blur radius of the shadow

              spreadRadius: 0.0, // Set the spread radius of the shadow

              //  offset: Offset(0, 2),

            )

          ],

          color: Colors.white,

          borderRadius: BorderRadius.circular(5),

          border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.25)),

          image: DecorationImage(image: AssetImage(Assets))

      ),

    ),
    SizedBox(height: 5,),
    Row(
      children: [
        Text(
          TEXT,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600,color: Colors.black),
        ),

      ],
    ),
  ],
);