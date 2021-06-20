enum NetworkRoutes {
  LOGIN,
  REGISTER,

  REQUEST_RESET_PASSWORD,
  TOKEN_REFRESH,
}

extension NetworkRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.LOGIN:
        return 'auth/login/';
      case NetworkRoutes.REGISTER:
        return 'auth/register/';
      case NetworkRoutes.TOKEN_REFRESH:
        return 'auth/token/refresh/';
      case NetworkRoutes.REQUEST_RESET_PASSWORD:
        return 'auth/request-reset-password/';

      default:
        throw Exception('Routes not found.');
    }
  }
}
