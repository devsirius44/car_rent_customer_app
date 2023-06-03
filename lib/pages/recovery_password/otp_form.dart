import 'package:customer_app/blocs/recovery_password/recovery_password.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final TextEditingController _controller = TextEditingController();

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
                            SizedBox(
                              height: 30,
                            ),
                            Text('استعادة كلمة المرور',
                                style: AppStyles.textStyle28_black),
                            SizedBox(
                              height: 40,
                            ),
                            Text('رمز التحقق',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 30),
                            PinCodeTextField(
                              controller: _controller,
                              autofocus: true,
                              hideCharacter: false,
                              highlight: true,
                              highlightColor: Color(0xFFD3B04F),
                              defaultBorderColor: Color(0xFFD3B04F),
                              hasTextBorderColor: Color(0xFFD3B04F),
                              pinBoxHeight: 70,
                              pinBoxWidth: 70,
                              maxLength: 4,
                              onDone: (text) {},
                              pinCodeTextFieldLayoutType:
                                  PinCodeTextFieldLayoutType.NORMAL,
                              wrapAlignment: WrapAlignment.start,
                              pinBoxDecoration: ProvidedPinBoxDecoration
                                  .customPinBoxDecoration,
                              pinTextStyle: TextStyle(
                                  fontSize: 23.0, color: Colors.black),
                              pinTextAnimatedSwitcherTransition:
                                  ProvidedPinBoxTextAnimation
                                      .scalingTransition,
                              pinTextAnimatedSwitcherDuration:
                                  Duration(milliseconds: 300),
                            ),
                            const SizedBox(height: 50),
                            AppButton(
                                loading: state is VerificationLoading,
                                text: 'تحقق',
                                onPressed: () {
                                  BlocProvider.of<RecoveryPasswordBloc>(
                                          context)
                                      .add(VerifyCode(
                                          code: _controller.text));
                                }),
                          ],
                        )),
                    Spacer(),
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
