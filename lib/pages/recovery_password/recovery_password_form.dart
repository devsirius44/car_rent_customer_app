import 'package:customer_app/blocs/recovery_password/recovery_password.dart';
import 'package:customer_app/blocs/signup/signup.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecoveryPssswordForm extends StatefulWidget {
  @override
  _RecoveryPssswordFormState createState() => _RecoveryPssswordFormState();
}

class _RecoveryPssswordFormState extends State<RecoveryPssswordForm> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecoveryPasswordBloc, RecoveryPasswordState>(
      builder: (context, state) {
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
                    Container(
                      margin: EdgeInsets.only(top: 36, left: 18),
                      alignment: Alignment.topLeft,
                      child: FractionallySizedBox(
                          widthFactor: 0.23,
                          child: Image.asset('assets/images/logo.png')),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 52),
                            Text('استعادة كلمة المرور',
                                style: AppStyles.textStyle24_black),
                            const SizedBox(height: 30),
                            Text('ادخل اسم المستخدم',
                                style: AppStyles.textStyle18_black),
                            SizedBox(
                              height: 60,
                            ),
                            UnderlinedInput(
                              hintText: 'اسم المستخدم ( رقم الجوال)',
                              controller: _phoneController,
                            ),
                            const SizedBox(height: 30),
                            AppButton(
                                text: 'استعادة',
                                loading: state is RecoveryPasswordLoading,
                                hMargin: 30,
                                onPressed: () {
                                  BlocProvider.of<RecoveryPasswordBloc>(
                                          context)
                                      .add(RecoveryPassword(
                                          phone: _phoneController.text));
                                }),
                          ],
                        )),
                    Spacer(),
                    SizedBox(
                      height: 30,
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
            ));
      },
    );
  }
}
