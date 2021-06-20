import '../../init/network/i_response_model.dart';

class BaseError extends IErrorModel {
  final String message;

  BaseError(this.message);
}
