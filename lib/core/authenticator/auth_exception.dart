class AuthenticatorExeption implements Exception {
  final String? message;
  AuthenticatorExeption({this.message});
}

class UnAuthorizedException extends AuthenticatorExeption {
  UnAuthorizedException() : super(message: 'UnAuthorized');
}

class RefreshTokenExpiredException extends AuthenticatorExeption {
  RefreshTokenExpiredException() : super(message: 'Refresh token expired');
}

class RequestGuestTokenException {
  final dynamic error;

  RequestGuestTokenException({
    required this.error,
  });
}

class RefreshTokenException {
  final dynamic error;

  RefreshTokenException({
    required this.error,
  });
}
