import 'package:customer_app/blocs/login/login.dart';
import 'package:customer_app/pages/recovery_password/recovery_password.dart';
import 'package:customer_app/pages/signup/signup.dart';
import 'package:customer_app/styles/styles.dart';
import 'package:customer_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        double appHeight = MediaQuery.of(context).size.height;
        double delHeight = appHeight -798.0;

        print(appHeight);
        return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.asset(
                  'assets/images/bg-simple.png',
                  fit: BoxFit.fill,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 10),
                      FractionallySizedBox(
                          widthFactor: 0.5,
                          child: Image.asset('assets/images/logo.png')),
                      const SizedBox(height: 24),
                      Text('تسجيل دخول',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      LoginInput(
                        'assets/images/icon_username.png',
                        controller: _phoneController,
                      ),
                      const SizedBox(height: 8),
                      LoginInput('assets/images/icon_password.png',
                          controller: _passwordController, obscure: true),
                      const SizedBox(height: 30),
                      AppButton(
                          loading: state is LoginLoading,
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context).add(Login(
                                phone: _phoneController.text,
                                password: _passwordController.text));
                          }),
                      delHeight> 0 ? Container(height: delHeight,): Container(),
                      const SizedBox(height: 54),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              print('go to signup page');
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (_) {
                                return SignupPage();
                              }));
                            },
                            child: Text('تسجيل',
                                style: AppStyles.textSyle20_underline),
                          ),
                          SizedBox(width: 8),
                          Text(
                            'تسجيل حساب جديد',
                            style: AppStyles.textStyle20_black,
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(width: 3),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('هل فقدت الرقم السري؟',
                                  style: AppStyles.textStyle18_black),
                              InkWell(
                                onTap: () {
                                  print("clicked");
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RecoveryPasswordPage()));
                                },
                                child: Text('استعادة الرقم السري',
                                    style: AppStyles.textStyle18_underline),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 80),
                      Text('v1.0.0',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 30)
                    ],
                  ),
                )
              ],
            ));
      },
    );
  }
}
