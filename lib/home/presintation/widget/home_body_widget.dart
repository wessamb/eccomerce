import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_ecommerce/home/presintation/manage/products_list_items_bloc.dart';
import 'package:new_ecommerce/home/presintation/manage/products_list_items_state.dart';
import 'package:new_ecommerce/home/presintation/widget/titles_home_widget.dart';


import '../../data/productmodel.dart';
import 'app_bar_home_widget.dart';
import 'images_home_widget.dart';

import 'item_products_widget.dart';
import 'list_categoeries.dart';

class HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsListItemsBloc, ProductsListState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          if (state.state.LoadingProducts) {
            return Center(child: CircularProgressIndicator());
          }
          else  if (state.state.SuccessProducts) {
            //       CacheHelper.saveData(key:'productItem', value: state.model);

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 53),
                  AppBarHome(15),
                  SizedBox(height: 9),
                  Images(),
                  SizedBox(height: 17),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          titles('Shop By', 'Category'),
                          SizedBox(height: 6),
                          SizedBox(height: 3),
                          ListCategoeries(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 0),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: titles('Featured', 'Products'),
                  ),
                  SizedBox(height: 8),
            FutureBuilder(future: state.product,builder: (context, snapshot) {
            if(snapshot.hasData){
             return Products(snapshot.data!);
            }
            return Center(child: CircularProgressIndicator());
            }
              ,)
                ],
              ),
            );
          }
          else if (state.state.ErrorProducts) {
            return Center(child: Container(child: Text('ERROR')));
          }
          return Center(
              child: Container(child: CircularProgressIndicator(),));
        }

    );
  }
}

Widget Products(List<ProductModel>model) =>

    Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: double.infinity,
        height: 301,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>

                ProductItem(model: model[index],)
            ,
            separatorBuilder: (context, index) =>
                SizedBox(
                  width: 16,
                ),
            itemCount: model.length),
      ),
    );
