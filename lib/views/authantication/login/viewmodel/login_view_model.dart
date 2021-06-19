import 'package:celebi_app/core/base/viewmodel/base_view_model.dart';
import 'package:celebi_app/core/constants/enums/preferences_keys.dart';
import 'package:celebi_app/core/init/network/vexana_manager.dart';
import 'package:celebi_app/core/locators.dart';
import 'package:celebi_app/views/authantication/login/model/login_request_model.dart';
import 'package:celebi_app/views/authantication/login/service/i_login_service.dart';
import 'package:celebi_app/views/authantication/login/service/login_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  ILoginService? loginService;

  TextEditingController? emailController;
  TextEditingController? passwordController;
  @override
  void init() {
    loginService = LoginService(locator<VexanaManager>().networkManager);
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
    changeLoading();
    if (formState.currentState!.validate()) {
      final response = await loginService!.fethUserControl(LoginRequestModel(
          email: emailController!.text, password: passwordController!.text));

      if (response != null) {
        print(response.token!);
        scaffoldState.currentState!
            .showSnackBar(SnackBar(content: Text(response.token!)));
        await localeManager.setStringValue(
            PreferencesKeys.TOKEN, response.token!);
      }
    }
  }

  @action
  void isLockStateChange() {
    isLockOpen = !isLockOpen;
  }

  @action
  void changeLoading() {
    isLaoding = !isLaoding;
  }
}
