import 'package:customer_app/pages/home/home_page.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';

class AccountSettingSuccessPage extends StatefulWidget {
  @override
  _AccountSettingSuccessPageState createState() =>
      _AccountSettingSuccessPageState();
}

class _AccountSettingSuccessPageState extends State<AccountSettingSuccessPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3), () => Navigator.of(context).pop()
        // Navigator.pushReplacement(
        //   context,
        //   MaterialPageRoute(builder: (context) => HomePage()),
        // )
        );
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
                        Text('تم الحفظ بنجاح',
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
