
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_ecommerce/main/presntation/manage/changebottom_bloc.dart';


import '../../../account/presntiation/screen/account_screen.dart';
import '../../../bag/presntiation/screen/bag_screen.dart';
import '../../../categories/presntation/screen/categories_screen.dart';
import '../../../favorites/screen/favorites_screen.dart';
import '../../../home/presintation/screen/Home_screen.dart';



class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangebottomBloc, ChangeBottomState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final currentIndex = state.Counter ?? 0;
        List<Widget>pages=[
          Home(),
          Categorie(),
          Account(),
          Favorites(),
          Bag(),
        ];
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.green,
                unselectedItemColor: Colors.blue,
                selectedItemColor: Colors.black,
                currentIndex: currentIndex,
                onTap: (value) {   BlocProvider.of<ChangebottomBloc>(context)
                    .add(ChangeBottomUiEvent(value));
                },
                items: [

                  BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home'
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.apps),
                      label: 'Categories '
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Account '
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: 'Wishlist '
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_bag),
                      label: 'Bag '
                  ),
                ]),
            body: pages[currentIndex]
        );
      },
    );
  }
}
