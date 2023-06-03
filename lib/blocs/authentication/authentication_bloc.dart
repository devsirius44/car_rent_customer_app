import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:customer_app/blocs/authentication/authentication_state.dart';
import 'package:customer_app/repositories/user_repository.dart';
import 'package:meta/meta.dart';

import 'authentication_event.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserRepository userRepository;

  Timer _splashTimer;

  AuthenticationBloc({@required this.userRepository})
      : assert(userRepository != null);

  @override
  AuthenticationState get initialState => AuthenticationUninitialized();

  @override
  Future<void> close() {
    _splashTimer?.cancel();
    return super.close();
  }

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield AuthenticationUninitialized();
      _splashTimer = Timer.periodic(Duration(seconds: 3), (timer) {
        if (timer.tick == 1) {
          add(CheckAuthenticationStatus());
          _splashTimer.cancel();
        }
      });
    }

    if (event is CheckAuthenticationStatus) {
      final bool hasToken = userRepository.hasToken();
      if (hasToken) {
        String token = userRepository.getToken();
        yield (AuthenticationAuthenticated(token: token));
      } else {
        yield AuthenticationUnauthenticated();
      }
    }

    if (event is LoggedIn) {
      yield AuthenticationAuthenticated();
      userRepository.persistToken(event.token);
    }

    if (event is LoggedOut) {
      userRepository.deleteToken();
      yield AuthenticationUnauthenticated();
    }
  }
}
