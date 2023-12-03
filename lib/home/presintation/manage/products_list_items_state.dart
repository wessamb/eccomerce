import 'package:equatable/equatable.dart';

import '../../data/productmodel.dart';

enum products{initil,loading,success,error}
extension productslist on products{
  bool get InitialProducts =>this==products.initil;
  bool get LoadingProducts=>this==products.loading;
  bool get SuccessProducts=>this==products.success;
  bool get ErrorProducts=>this==products.error;
}
class ProductsListState extends Equatable{
final products state;
final Future<List <ProductModel>>?product;
ProductsListState({this.state=products.initil,this.product});
ProductsListState copyWith({products? states,
  Future<List <ProductModel>>?prod
}){
  return ProductsListState(state: states??state,product: prod??product);
}
  @override
  List<Object?> get props => [state,product];
}