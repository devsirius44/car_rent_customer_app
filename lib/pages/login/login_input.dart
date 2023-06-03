import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {

  final String icon;
  final bool obscure;
  final TextInputType keyboardType;
  final TextEditingController controller;
  const LoginInput(this.icon,  {Key key, this.controller, this.keyboardType = TextInputType.text, this.obscure = false}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF7F3E9),
        border: Border.all(
          color: Color(0xFFD3B04F),
          width: 1.0
        ),
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Row(
        children: <Widget>[
          Image.asset(icon, width: 25, fit: BoxFit.fitWidth),
          Expanded(
            child: TextFormField(
              controller: controller,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFFCCC2A4)
              ),
              obscureText: obscure,
              keyboardType: keyboardType,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15)
              ),
            ),
          )
        ],
      ),
    );
  }
}