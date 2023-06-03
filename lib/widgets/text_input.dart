import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';

class UnderlinedInput extends StatelessWidget {
  final String hintText;
  final bool obscure;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const UnderlinedInput(
      {Key key,
      this.hintText,
      this.controller,
      this.obscure = false,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.textStyle18,
          focusedBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Color(0xFFBC962B), width: 1)),
          enabledBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Color(0xFFBC962B), width: 1)),
          border: new UnderlineInputBorder(
              borderSide: new BorderSide(color: Color(0xFFBC962B), width: 1)),
        ),
        style: AppStyles.textStyle18_black,
        textAlign: TextAlign.right,
      ),
    );
  }
}
