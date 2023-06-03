import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class Signup extends SignUpEvent {
  final String password;
  final String phone;

  Signup({@required this.password, @required this.phone})
      : assert(password != null),
        assert(phone != null);

  @override
  List<Object> get props => [phone, password];
}

class VerifyCode extends SignUpEvent {
  final String code;

  VerifyCode({@required this.code});

  @override
  List<Object> get props => [code];
}

class TransitionToHome extends SignUpEvent {}
