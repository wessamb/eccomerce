import 'package:flutter/material.dart';

import '../widget/login_body_widget.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: LoginBody(),
            ),
          ),
        ),
      ),
    );
  }
}
