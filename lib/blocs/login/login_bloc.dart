import 'package:bloc/bloc.dart';
import 'package:customer_app/blocs/authentication/authentication.dart';
import 'package:customer_app/repositories/user_repository.dart';
import 'package:customer_app/utils/utils.dart';
import 'package:meta/meta.dart';

import 'login.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationBloc authenticationBloc;

  String token;

  LoginBloc({@required this.authenticationBloc})
      : assert(authenticationBloc != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is Login) {
      if (event.phone.isEmpty) {
        singleton.showToastMessage('Please input phone');
        return;
      }
      if (event.phone.isEmpty) {
        singleton.showToastMessage('Please input password');
        return;
      }
      yield LoginLoading();
      try {
        final token = await UserRepository.getInstance()
            .authenticate(phone: event.phone, password: event.password);

        if (token != null && token.isNotEmpty) {
          this.token = token;
          yield WaitingOTPVerification();
        } else {
          singleton.showToastMessage('Your inputs are invalid');
          yield LoginFailure(error: 'Input field is not correct');
        }
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
    if (event is VerifyCode) {
      if (event.code.isEmpty || event.code.length < 4) {
        singleton.showToastMessage('Please input pin code');
        return;
      }
      try {
        yield VerificationLoading();
        print('step 1');
        bool res =
            await UserRepository.getInstance().verify(event.code, this.token);
        if (res) {
          authenticationBloc.add(LoggedIn(token: this.token));
          yield LoginInitial();
        } else {
          singleton.showToastMessage('Please input the correct code');
          yield VerificationFailure();
        }
      } catch (error) {
        yield VerificationFailure();
      }
    }
  }
}
