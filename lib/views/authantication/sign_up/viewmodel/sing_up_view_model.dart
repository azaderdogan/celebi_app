import 'package:celebi_app/core/base/viewmodel/base_view_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'sing_up_view_model.g.dart';

class SingUpViewModel = _SingUpViewModelBase with _$SingUpViewModel;

abstract class _SingUpViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}
}
