import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:new_ecommerce/home/data/productmodel.dart';
import 'package:new_ecommerce/home/presintation/manage/products_list_items_event.dart';
import 'package:new_ecommerce/home/presintation/manage/products_list_items_state.dart';

import '../../../core/network/repository.dart';



class ProductsListItemsBloc extends Bloc<ProductsListItemsEvent, ProductsListState> {
  final UserRepository repository;
  ProductsListItemsBloc({required this.repository}) : super(ProductsListState()) {
   on<ProductsItemsEvent>(_addProduct);
  }
 Future <void> _addProduct(ProductsItemsEvent event,Emitter<ProductsListState>emit)async{
    try {
      emit(state.copyWith(states: products.loading));
      final UserRepo =  repository.getProducts();
     // print(UserRepo.length);
      emit(state.copyWith(states: products.success, prod: UserRepo));
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(states: products.error));
    }

  }
}
