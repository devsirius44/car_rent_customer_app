import 'package:flutter/material.dart';

import 'index.dart';
import 'message_send.dart';

class ChattingRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Color(0xFFBC962B),
                              size: 30,
                            )),
                        Column(
                          children: <Widget>[
                            Text('الإدارة',
                                style: TextStyle(
                                    color: Color(0xFFBC962B), fontSize: 11)),
                            Text('الاحد 12:20',
                                style: TextStyle(
                                    color: Color(0xFFBC962B), fontSize: 11)),
                          ],
                        ),
                        Container(),
                      ],
                    ),
                    const SizedBox(height: 15),
                    MessageItem(),
                    MessageItem(),
                    ReceiveMessageItem(),
                    ReceiveMessageItem(),
                    MessageItem(),
                    MessageItem(),
                    MessageItem(),
                    MessageItem(),
                    MessageItem(),
                    MessageItem(),
                    MessageItem(),
                    MessageItem(),
                    Typing(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: MessageSend(),
          ),
          SizedBox(
            height: 4,
          )
        ],
      ),
    );
  }
}
