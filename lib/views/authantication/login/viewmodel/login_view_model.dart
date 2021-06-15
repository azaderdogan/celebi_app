import 'package:celebi_app/core/base/viewmodel/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store, BaseViewModel {
  @override
  void init() {}
  @override
  void setContext(BuildContext context) => this.context = context;
}
