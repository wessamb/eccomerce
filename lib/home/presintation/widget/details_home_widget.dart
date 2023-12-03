
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/productmodel.dart';
import 'app_bar_home_widget.dart';



class DetailsHome extends StatelessWidget {
  DetailsHome({this.model});

  ProductModel? model;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 53,
            ),
            AppBarHome(0),
            SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Text(
                  'Fashion/',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Woman',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Color(0XFFE91E63)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
