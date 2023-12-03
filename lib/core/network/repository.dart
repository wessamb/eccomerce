import 'package:new_ecommerce/core/network/api_service.dart';
import 'package:new_ecommerce/home/data/productmodel.dart';

import '../../login/data/login_model.dart';

class UserRepository{
final ApiService apiService;
UserRepository({required this.apiService});
Future<LoginModel>postUsers(String username,String password) async=>apiService.postUsers(username: username,password: password);
Future<List<ProductModel>>getProducts()async=>apiService.getProducts();
}