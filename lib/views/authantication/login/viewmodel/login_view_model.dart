import 'package:celebi_app/core/base/viewmodel/base_view_model.dart';
import 'package:celebi_app/core/constants/enums/preferences_keys.dart';
import 'package:celebi_app/core/init/network/network_manager.dart';
import 'package:celebi_app/core/init/network/vexana_manager.dart';
import 'package:celebi_app/core/locators.dart';
import 'package:celebi_app/views/authantication/login/model/login_request_model.dart';
import 'package:celebi_app/views/authantication/login/service/i_login_service.dart';
import 'package:celebi_app/views/authantication/login/service/login_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();

  late ILoginService loginService;

  TextEditingController? emailController;
  TextEditingController? passwordController;
  @override
  void init() {
    scaffoldState = GlobalKey();
    loginService = LoginService(
      locator<VexanaManager>().networkManager,
      Dio(
        BaseOptions(
          baseUrl: 'http://10.0.2.2:8000/',
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      ),
      NetworkManager.instance!.coreDio,
    );
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @observable
  bool isLaoding = false;

  @observable
  bool isLockOpen = true;

  @action
  Future<void> fetchLoginService() async {
    isLoadingChange();
    if (formState.currentState!.validate()) {
      final response = await loginService.fetchUserControl(LoginRequestModel(
          email: emailController!.text, password: passwordController!.text));

      if (response != null) {
        if (scaffoldState!.currentState != null) {
          scaffoldState!.currentState!.showSnackBar(
              SnackBar(content: Text(response.tokens.toString())));
        }
        await localeManager.setStringValue(
            PreferencesKeys.TOKEN, response.tokens.toString());
      }
    }
    isLoadingChange();
  }

  @action
  void isLockStateChange() {
    isLockOpen = !isLockOpen;
  }

  @action
  void isLoadingChange() {
    isLaoding = !isLaoding;
  }
}
