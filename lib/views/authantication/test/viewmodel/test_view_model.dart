import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';
import '../../../../core/constants/enums/app_theme_enum.dart';
import '../../../../core/init/notifier/theme_notifier.dart';

part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase extends BaseViewModel with Store {
  BuildContext? context;
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {}
  @observable
  int number = 0;

  // hesaplanan değer @computed
  @action
  void incerementNumber() {
    number++;
  }

// tema değiştirme
  void changeTheme() {
    Provider.of<ThemeNotifier>(context!, listen: false)
        .changeTheme(AppThemes.DARK);
  }
}
