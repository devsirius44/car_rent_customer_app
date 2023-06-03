import 'package:flutter/material.dart';

class FlatTextFormField extends StatelessWidget {
  final String hintText;
  final String initialValue;
  FlatTextFormField({Key key, this.hintText = 'إدخال', this.initialValue = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 50
      ),
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        initialValue: initialValue,
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFBC962B)),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(12.0, 12.0, 28.0, 12.0),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 12, color: Color(0xFFAFAFAF)),
            filled: true,
            fillColor: Color(0xFFE8E8E8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0.0)),
                borderSide: BorderSide(color: Color(0x4F707070), width: 1.0))),
      ),
    );
  }
}
