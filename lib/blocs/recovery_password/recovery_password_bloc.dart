import 'package:bloc/bloc.dart';
import 'package:customer_app/repositories/user_repository.dart';
import 'package:customer_app/utils/singleton.dart';

import 'recovery_password.dart';

class RecoveryPasswordBloc
    extends Bloc<RecoveryPasswordEvent, RecoveryPasswordState> {
  // static RecoveryPasswordBloc _recoveryPasswordBloc;

  // static getInstance() {
  //   if (_recoveryPasswordBloc == null) {
  //     _recoveryPasswordBloc = RecoveryPasswordBloc();
  //   }
  //   return _recoveryPasswordBloc;
  // }

  @override
  RecoveryPasswordState get initialState => RecoveryPasswordInitial();

  @override
  Stream<RecoveryPasswordState> mapEventToState(
    RecoveryPasswordEvent event,
  ) async* {
    if (event is RecoveryPassword) {
      if (event.phone.isEmpty) {
        singleton.showToastMessage('Please input the phone number or username');
        return;
      }
      yield RecoveryPasswordLoading();
      try {
        await UserRepository.getInstance().recoveryPassword(phone: event.phone);
        yield WaitingOTPVerification();
      } catch (e) {
        yield RecoveryPasswordFailure();
      }
    }

    if (event is VerifyCode) {
      if (event.code.isEmpty) {
        singleton.showToastMessage('Please input the verification code');
        return;
      }
      yield VerificationLoading();
      try {
        await UserRepository.getInstance()
            .verify(event.code, UserRepository.getInstance().getToken());
        yield VerificationSuccess();
        // await Future.delayed(Duration(seconds: 2));
        // AuthenticationBloc.getInstance().add(AppStarted());
      } catch (e) {
        yield VerificationFailure();
      }
    }
  }
}
