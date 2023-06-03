import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class RecoveryPasswordEvent extends Equatable {
  const RecoveryPasswordEvent();

  @override
  List<Object> get props => [];
}

class RecoveryPassword extends RecoveryPasswordEvent {
  final String phone;

  RecoveryPassword({@required this.phone});

  @override
  List<Object> get props => [phone];
}

class VerifyCode extends RecoveryPasswordEvent {
  final String code;
  VerifyCode({@required this.code});

  @override
  List<Object> get props => [code];
}
