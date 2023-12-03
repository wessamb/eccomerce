import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {
  final TextEditingController? controller;
  final String? labels;
  final Icon? icon;
  final String? Function(String?)? submit;

  const TextFormFields({
    Key? key,
    this.controller,
    this.labels,
    this.icon,
    this.submit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
        labelText: labels,
        prefixIcon: icon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      validator: submit,
    );
  }
}
Widget DefualtBottom({@required Text? title, @required Function? onpress}) =>
    ElevatedButton(onPressed:() => onpress!(), child:title!);
