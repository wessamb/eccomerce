
import 'package:flutter/material.dart';

import '../../data/productmodel.dart';
import '../screen/details_screen.dart';

class ProductItem extends StatelessWidget {
  ProductItem({this.model});
  ProductModel? model;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsScreen(model:model);
        },));
      },
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(model!.image!)),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(

          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 13, right: 15),
                child: Container(
                  height: 50,
                  width: 205,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.25))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 105,
                        child: Center(
                          child: Text(model!.title!,
                              overflow: TextOverflow.ellipsis,

                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.w500)),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        '\$${model!.price!.toString()}',
                        style: TextStyle(
                            color: Color(0XFFE91E63),
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 15, bottom: 13),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_basket,
                        size: 25,
                        color: Colors.white,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
