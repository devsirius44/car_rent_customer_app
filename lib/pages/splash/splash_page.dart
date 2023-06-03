import 'package:flutter/material.dart';
import 'package:customer_app/styles/styles.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/images/bg-simple.png',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.fill),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 56),
                  child: Image.asset('assets/images/logo.png',
                      width: 235, fit: BoxFit.fitWidth)),
              Spacer(),
              Column(
                children: <Widget>[
                  Image.asset('assets/images/icon_mark.png',
                      width: 65, fit: BoxFit.fitWidth),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    'تطوير',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'saeedbinidan.com',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              )
            ],
          ),
        ],
      ),
    );
  }
}
