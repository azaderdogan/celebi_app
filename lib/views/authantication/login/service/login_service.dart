import 'package:celebi_app/views/authantication/login/model/request_user_model.dart';
import 'package:dio/dio.dart';

class LoginService {
  Dio dio = Dio();
  void loginPost(UserRequestModel userRequestModel) {
    final response = dio.post('auth/login', data: userRequestModel);
    
  }
}
