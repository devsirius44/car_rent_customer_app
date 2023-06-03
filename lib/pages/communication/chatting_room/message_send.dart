import 'package:flutter/material.dart';

class MessageSend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Image.asset('assets/images/icon_camera.png', width: 30, height: 30),
          ),
          Expanded(
            child: TextFormField(
              style: TextStyle(color: Color(0xFFBC962B), fontSize: 20),
              minLines: 1,
              maxLines: 3,
              autocorrect: false,
              textAlign: TextAlign.right,
              initialValue: 'الرسالة',
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(8.0),
                prefixIcon: Padding(padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: Image.asset('assets/images/icon_voice.png', width: 20, height: 20,)),
                // hintText: 'الرسالة',
                filled: true,
                fillColor: Color(0xFFFAFAFA),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Color(0xFFC7C7CC)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Color(0xFFC7C7CC)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
