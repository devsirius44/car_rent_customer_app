import 'package:customer_app/blocs/login/login.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OTPForm extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.fill,
              ),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40),
                    FractionallySizedBox(
                        widthFactor: 0.5,
                        child: Image.asset('assets/images/logo.png')),
                    const SizedBox(height: 40),
                    Text('تسجيل دخول',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 50),
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
                      pinBoxDecoration:
                          ProvidedPinBoxDecoration.customPinBoxDecoration,
                      pinTextStyle:
                          TextStyle(fontSize: 23.0, color: Colors.black),
                      pinTextAnimatedSwitcherTransition:
                          ProvidedPinBoxTextAnimation.scalingTransition,
                      pinTextAnimatedSwitcherDuration:
                          Duration(milliseconds: 300),
                    ),
                    const SizedBox(height: 50),
                    AppButton(
                        loading: state is VerificationLoading,
                        onPressed: () {
                          BlocProvider.of<LoginBloc>(context)
                              .add(VerifyCode(code: _controller.text));
                        }),
                    const SizedBox(height: 100),
                    // Text('v1.0.0',
                    //     style: TextStyle(
                    //         fontSize: 16,
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.bold)),
                    // const SizedBox(height: 30)
                  ],
                ),
              )
            ],
          ));
    });
  }
}
