import 'package:customer_app/blocs/signup/signup.dart';
import 'package:customer_app/pages/home/home_page.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupSuccessForm extends StatefulWidget {
  @override
  _SignupSuccessFormState createState() => _SignupSuccessFormState();
}

class _SignupSuccessFormState extends State<SignupSuccessForm> {
  @override
  void initState() {
    super.initState();
    // new Future.delayed(
    //     const Duration(seconds: 3),
    //     () => Navigator.pushReplacement(
    //           context,
    //           MaterialPageRoute(builder: (context) => HomePage()),
    //         ));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: InkWell(
              onTap: () {
                // SignupBloc.getInstance().add(TransitionToHome());
                // Navigator.of(context).pop();
              },
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    'assets/images/bg-simple.png',
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 36, left: 18),
                        alignment: Alignment.topLeft,
                        child: FractionallySizedBox(
                            widthFactor: 0.23,
                            child: Image.asset('assets/images/logo.png')),
                      ),
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
                      SizedBox(
                        height: 80,
                      ),
                      Text('v1.0.0',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 16)
                    ],
                  ),
                ],
              ),
            ));
      },
    );
  }
}
