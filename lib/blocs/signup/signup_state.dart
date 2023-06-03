import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class SignupState extends Equatable {
  const SignupState();
  @override
  List<Object> get props => [];
}

class SignupInitial extends SignupState {}

class SignupLoading extends SignupState {}

class WaitingOTPVerification extends SignupState {}

class VerificationLoading extends SignupState {}

class VerificationFailure extends SignupState {}

class SignupFailure extends SignupState {
  final String error;

  SignupFailure({@required this.error});

  @override
  List<Object> get props => [error];
}

class SignupSuccess extends SignupState {
  // final String token;

  // SignupSuccess({this.token});
}
