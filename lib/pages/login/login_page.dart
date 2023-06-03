import 'package:customer_app/blocs/authentication/authentication.dart';
import 'package:customer_app/blocs/login/login.dart';
import 'package:customer_app/pages/login/otp_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(
          authenticationBloc: BlocProvider.of<AuthenticationBloc>(context)),
      child: BlocBuilder<LoginBloc, LoginState>(
        condition: (context, state) {
          return state is LoginInitial || state is WaitingOTPVerification;
        },
        builder: (context, state) {
          if (state is LoginInitial) {
            return LoginForm();
          } else if (state is WaitingOTPVerification) {
            return OTPForm();
          } else {
            return Center(
              child: Text('Unsupporteed State'),
            );
          }
        },
      ),
    );
  }
}
