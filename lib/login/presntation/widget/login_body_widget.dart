import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_ecommerce/main/presntation/screen/layout.dart';

import '../../../core/components/color_manager.dart';
import '../../../core/components/value_manager.dart';
import '../../../core/components/widgets.dart';
import '../manage/login_user_bloc.dart';

class LoginBody extends StatelessWidget {
  LoginBody({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginUserBloc, UsersState>(
      listener: (context, state) {

if(state.state.isSuccess){
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
    return LayoutScreen();
  },), (route) => false);
}

      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: AppSize.s40,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Login now to browse our hot offers',
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: ColorManager.grey),
              ),
              SizedBox(height: 20),
              TextFormFields(
                controller: usernameController,
                labels: 'Email',
                icon: Icon(Icons.email),
                submit: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your usernameController';
                  }
                  return null;
                },
              ),
              SizedBox(height: 5),
              TextFormFields(
                controller: passwordController,
                labels: 'Password',
                icon: Icon(Icons.lock_outlined),
                submit: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              ConditionalBuilder(
                condition: !state.state.isLoading ,
                builder: (context) =>  Container(
                  width: double.infinity,
                  child: DefualtBottom(
                    title: Text('Sign in'),
                    onpress: () {
                      BlocProvider.of<LoginUserBloc>(context).add(GetUsersEvent(username: usernameController.text, password: passwordController.text));
                    },
                  ),
                ),
                fallback: (context) => Center(child: CircularProgressIndicator()),

              ),
            ],
          ),
        );
      },
    );;
  }
}
