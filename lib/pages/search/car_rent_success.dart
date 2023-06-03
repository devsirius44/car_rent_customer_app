import 'package:customer_app/pages/home/home_page.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';

class CarRendSuccessPage extends StatefulWidget {
  @override
  _CarRendSuccessPageState createState() => _CarRendSuccessPageState();
}

class _CarRendSuccessPageState extends State<CarRendSuccessPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/bg-simple.png',
              fit: BoxFit.fill,
            ),
            Column(
              children: <Widget>[
                Spacer(),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/check_successed.png',
                          width: 80,
                          height: 80,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('تم تسجيلك بنجاح',
                            style: AppStyles.textStyle28_black),
                      ],
                    )),
                Spacer(),
              ],
            ),
          ],
        ));
  }
}
