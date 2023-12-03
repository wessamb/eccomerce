import 'package:flutter/material.dart';

import '../../../../constants.dart';

import '../../../core/components/assets_manages.dart';

import 'images_categories_widget.dart';
Widget ListCategoeries()=>Container(
  height: 140,
  width: double.infinity,
  child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>
          ImagesCategories(CategoriesAssets[index],Categories[index]),
      separatorBuilder: (context, index) =>
          SizedBox(width: 7),
      itemCount: CategoriesAssets.length),
);