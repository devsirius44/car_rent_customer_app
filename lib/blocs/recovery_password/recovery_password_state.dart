import 'package:equatable/equatable.dart';

abstract class RecoveryPasswordState extends Equatable {
  const RecoveryPasswordState();
  @override
  List<Object> get props => [];
}

class RecoveryPasswordInitial extends RecoveryPasswordState {}

class RecoveryPasswordLoading extends RecoveryPasswordState {}

class WaitingOTPVerification extends RecoveryPasswordState {}

class RecoveryPasswordFailure extends RecoveryPasswordState {}

class VerificationLoading extends RecoveryPasswordState {}

class VerificationFailure extends RecoveryPasswordState {}

class VerificationSuccess extends RecoveryPasswordState {}
