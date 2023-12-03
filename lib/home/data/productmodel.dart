import 'package:json_annotation/json_annotation.dart';
import 'package:new_ecommerce/home/data/rating.dart';
part 'productmodel.g.dart';

@JsonSerializable()
class ProductModel{
  int? id;
  String? title;
  double? price;
String? description;
String? category;
String? image;
Rating? rating;
  ProductModel({this.id,this.title,this.price,this.description,this.category,this.image,this.rating});
  factory ProductModel.fromJson(Map<String,dynamic>json)=>_$ProductModelFromJson(json);
}
