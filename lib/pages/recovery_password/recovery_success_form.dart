import 'package:customer_app/blocs/authentication/authentication.dart';
import 'package:customer_app/blocs/recovery_password/recovery_password.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecoveryPasswordSuccessForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecoveryPasswordBloc, RecoveryPasswordState>(
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: InkWell(
              onTap: () {
                BlocProvider.of<AuthenticationBloc>(context)
                    .add(AppStarted());
                Navigator.of(context).pop();
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
                              Text('تم إرسال الرسالة النصية بنجاح',
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
