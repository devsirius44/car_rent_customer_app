import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {}

class CheckAuthenticationStatus extends AuthenticationEvent {}

class LoggedIn extends AuthenticationEvent {
  final String token;

  const LoggedIn({@required this.token});
  @override
  List<Object> get props => [token];

  @override
  String toString() {
    return 'LoggedIn { token: $token}';
  }
}

class LoggedOut extends AuthenticationEvent {}
