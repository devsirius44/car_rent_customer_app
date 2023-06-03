import 'package:customer_app/blocs/recovery_password/recovery_password.dart';
import 'package:customer_app/pages/recovery_password/recovery_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecoveryPasswordPage extends StatelessWidget {
  const RecoveryPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecoveryPasswordBloc>(
      create: (context) => RecoveryPasswordBloc(),
      child: BlocBuilder<RecoveryPasswordBloc, RecoveryPasswordState>(
        condition: (context, state) {
          return state is RecoveryPasswordInitial ||
              state is WaitingOTPVerification ||
              state is VerificationSuccess;
        },
        builder: (context, state) {
          if (state is RecoveryPasswordInitial) {
            return RecoveryPssswordForm();
          } else if (state is WaitingOTPVerification) {
            return OTPForm();
          } else if (state is VerificationSuccess) {
            return RecoveryPasswordSuccessForm();
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
