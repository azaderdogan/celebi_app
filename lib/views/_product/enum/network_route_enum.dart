enum NetworkRoutes { LOGIN }

extension NetworkRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.LOGIN:
        return 'auth/login/';

      default:
        throw Exception('Routes not found.');
    }
  }
}
