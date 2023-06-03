import 'package:customer_app/blocs/signup/signup.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _phoneController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupBloc, SignupState>(
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
                            Text('تسجيل حساب جديد',
                                style: AppStyles.textStyle28_black),
                            const SizedBox(height: 36),
                            UnderlinedInput(
                              hintText: 'اسم المستخدم (رقم الجوال)',
                              controller: _phoneController,
                            ),
                            const SizedBox(height: 16),
                            UnderlinedInput(
                              hintText: 'كلمة المرور',
                              controller: _passwordController,
                            ),
                            const SizedBox(height: 30),
                          ],
                        )),
                    Spacer(),
                    AppButton(
                        loading: state is SignupLoading,
                        hMargin: 30,
                        onPressed: () {
                          BlocProvider.of<SignupBloc>(context).add(Signup(
                              phone: _phoneController.text,
                              password: _passwordController.text));
                        }),
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
