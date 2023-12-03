import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_ecommerce/core/network/api_service.dart';
import 'package:new_ecommerce/core/network/repository.dart';
import 'package:new_ecommerce/home/presintation/manage/products_list_items_bloc.dart';
import 'package:new_ecommerce/home/presintation/manage/products_list_items_event.dart';
import 'package:new_ecommerce/login/presntation/screen/login_screen.dart';
import 'package:new_ecommerce/main/presntation/manage/changebottom_bloc.dart';
import 'package:new_ecommerce/main/presntation/screen/layout.dart';

import 'blocobserver.dart';
import 'login/presntation/manage/login_user_bloc.dart';

void main() {
  BlocOverrides.runZoned(()async{

    WidgetsFlutterBinding.ensureInitialized();


    ApiService.init();




    // print( CacheHelper.getData(key: 'addfav'));
    runApp( MyApp());
  },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
create: (context) => UserRepository(apiService: ApiService()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<LoginUserBloc>(create: (context) => LoginUserBloc(userRepository: context.read<UserRepository>()),),
          BlocProvider(create: (context) => ChangebottomBloc(),),
          BlocProvider(create: (context) => ProductsListItemsBloc(repository: context.read<UserRepository>())..add(ProductsItemsEvent()),)
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home:  LayoutScreen(),
        ),
      ),
    );
  }
}




