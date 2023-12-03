import 'package:json_annotation/json_annotation.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel{
String? username;
String? password;
LoginModel({this.username,this.password});
factory LoginModel.FromJson(Map<String,dynamic>json)=>_$LoginModelFromJson(json);
Map<String,dynamic>toJson()=>_$LoginModelToJson(this);
}