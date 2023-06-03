import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class Login extends LoginEvent {
  final String phone;
  final String password;

  Login({@required this.phone, @required this.password});

  @override
  List<Object> get props => [phone, password];
}

class VerifyCode extends LoginEvent {
  final String code;

  VerifyCode({@required this.code});

  @override
  List<Object> get props => [code];
  @override
  String toString() {
    return 'VerifyCode: {code: $code}';
  }
}
