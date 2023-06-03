import 'package:customer_app/blocs/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'signup.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignupBloc>(
      create: (context) => BlocProvider.of<SignupBloc>(context),
      child: BlocBuilder<SignupBloc, SignupState>(
        condition: (context, state) {
          return state is SignupInitial ||
              state is WaitingOTPVerification ||
              state is SignupSuccess;
        },
        builder: (context, state) {
          if (state is SignupInitial) {
            return SignupForm();
          } else if (state is WaitingOTPVerification) {
            return OTPForm();
          } else if (state is SignupSuccess) {
            return SignupSuccessForm();
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
