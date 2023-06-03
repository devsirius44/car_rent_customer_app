import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Singleton {
  void showToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Color.fromRGBO(30, 30, 30, 0.6),
        textColor: Colors.white
    );
  }
}

var singleton = Singleton();