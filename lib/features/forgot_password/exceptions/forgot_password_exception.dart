import 'package:equatable/equatable.dart';

class ForgotPasswordException extends Equatable implements Exception {
  final String message;
  final String errorCode;

  const ForgotPasswordException({
    this.message = '',
    this.errorCode = '',
  });

  @override
  List<Object?> get props => [message, errorCode];
}
