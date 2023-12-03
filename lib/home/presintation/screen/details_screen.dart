
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/productmodel.dart';
import '../widget/details_home_widget.dart';



class DetailsScreen extends StatelessWidget {
  DetailsScreen({this.model});

  ProductModel? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailsHome(model: model),
    );
  }
}
