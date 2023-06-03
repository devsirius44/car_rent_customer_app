import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool loading;
  final String text;
  final double hMargin;
  final double vPadding;
  const AppButton(
      {Key key,
      this.onPressed,
      this.loading = false,
      this.text = 'دخول',
      this.hMargin = 20,
      this.vPadding = 12})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: vPadding),
        margin: EdgeInsets.symmetric(horizontal: hMargin),
        decoration: BoxDecoration(
            color: Color(0xFFBC962B),
            border: Border.all(color: Color(0xFFD3B04F), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Center(
            child: loading
                ? CircularProgressIndicator()
                : Text(text,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
      ),
    );
  }
}
