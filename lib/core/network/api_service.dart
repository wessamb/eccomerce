import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:new_ecommerce/home/data/productmodel.dart';
import '../../login/data/login_model.dart';

class ApiService {
  static Dio? dio;

  static void init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://fakestoreapi.com/',
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 60),
      receiveTimeout: Duration(seconds: 120),
      headers: {},
    ));
  }

  Future<LoginModel> postUsers({
    required String username,
    required String password,
  }) async {
    try {
      var response = await dio!.post(
        '/auth/login',
        data: {
          "username": username,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        print(response.data);
        return LoginModel.FromJson(response.data); // Ensure correct method is used (fromJson, not FromJson)
      } else {
        print('Status Code: ${response.statusCode}');
        throw DioError(
          requestOptions: response.requestOptions,
          response: Response(data: response.data, statusCode: response.statusCode, requestOptions: RequestOptions()),
        );
      }
    } on DioError catch (e) {
      print('Dio Error: $e');
      throw e;
    } catch (e) {
      print('Generic Error: $e');
      rethrow; // Rethrow any other error
    }
  }
  Future<List<ProductModel>>getProducts()async{
    try {
      var response = await dio!.get(
        '/products'

      );

      if (response.statusCode == 200) {
        print(response.data);
        List<dynamic> data = response.data as List<dynamic>;
        List<ProductModel> products = data.map((item) => ProductModel.fromJson(item)).toList();

        print(products);
        return products;
      } else {
        print('Status Code: ${response.statusCode}');
        throw DioError(
          requestOptions: response.requestOptions,
          response: Response(data: response.data, statusCode: response.statusCode, requestOptions: RequestOptions()),
        );
      }
    } on DioError catch (e) {
      print('Dio Error: $e');
      throw e;
    } catch (e) {
      print('Generic Error: $e');
      rethrow; // Rethrow any other error
    }

  }
}
