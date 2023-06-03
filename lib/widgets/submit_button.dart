import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double vPadding;
  final bool loading;
  final double borderRadius;
  final Color backgroundColor;
  final double height;
  final double width;
  final double hPadding;
  final double fontSize;
  const SubmitButton(
      {Key key,
      this.onPressed,
      this.borderRadius = 20,
      this.vPadding = 15,
      this.hPadding = 15,
      this.fontSize = 16,
      this.title = 'تحقق',
      this.loading = false,
      this.height,
      this.width,
      this.backgroundColor = const Color(0xFFBC962B)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPressed,
      child: Container(
        height: height,
        width: width == null ? MediaQuery.of(context).size.width : width,
        // width:
        constraints: BoxConstraints(minWidth: 100, maxWidth: 160),
        padding: EdgeInsets.symmetric(horizontal: hPadding, vertical: vPadding),
        decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: Color(0xFFD3B04F), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: Center(
          child: loading
              ? CircularProgressIndicator()
              : Text(title,
                  style: TextStyle(
                      fontSize: fontSize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
