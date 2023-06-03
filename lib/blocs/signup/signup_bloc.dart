import 'package:bloc/bloc.dart';
import 'package:customer_app/blocs/authentication/authentication.dart';
import 'package:customer_app/blocs/signup/signup.dart';
import 'package:customer_app/repositories/user_repository.dart';
import 'package:customer_app/utils/singleton.dart';
import 'package:meta/meta.dart';

class SignupBloc extends Bloc<SignUpEvent, SignupState> {
  final AuthenticationBloc authenticationBloc;

  String token;

  SignupBloc({@required this.authenticationBloc});

  @override
  SignupState get initialState => SignupInitial();

  @override
  Stream<SignupState> mapEventToState(
    SignUpEvent event,
  ) async* {
    if (event is Signup) {
      if (event.phone.isEmpty) {
        singleton.showToastMessage('Please input the phone or username');
        return;
      }
      if (event.password.isEmpty) {
        singleton.showToastMessage('Please input the password');
        return;
      }
      yield SignupLoading();
      try {
        final token = await UserRepository.getInstance()
            .singup(phone: event.phone, password: event.password);
        this.token = token;
        yield WaitingOTPVerification();
      } catch (error) {
        yield SignupFailure(error: error.toString());
      }
    }

    if (event is VerifyCode) {
      if (event.code.isEmpty) {
        singleton.showToastMessage('Please input the verification code');
        return;
      }
      try {
        yield VerificationLoading();
        final bool res =
            await UserRepository.getInstance().verify(event.code, this.token);
        if (res) {
          yield SignupSuccess();
        } else {
          yield VerificationFailure();
        }
      } catch (error) {
        yield VerificationFailure();
      }
    }

    if (event is TransitionToHome) {
      authenticationBloc.add(LoggedIn(token: this.token));
      // yield SignupInitial();
    }
  }
}
