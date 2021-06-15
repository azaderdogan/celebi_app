import 'package:celebi_app/core/constants/enums/preferences_keys.dart';
import 'package:celebi_app/core/constants/navigation/navigation_constants.dart';
import 'package:celebi_app/core/init/lang/locale_keys.g.dart';
import 'package:celebi_app/core/locators.dart';
import 'package:celebi_app/views/_product/_constants/svg_image_path.dart';
import 'package:celebi_app/views/authantication/onboard/model/onboard_model.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';

part 'onboard_view_model.g.dart';

class OnboardViewModel = _OnboardViewModelBase with _$OnboardViewModel;

abstract class _OnboardViewModelBase with Store, BaseViewModel {
  final svgImagePaths = locator<SVGImagePaths>();
  @override
  void init() {
    onBoardItems.add(OnBoardModel(
        title: LocaleKeys.onBoard_page1_title,
        content: LocaleKeys.onBoard_page1_desc,
        imageUrl: svgImagePaths.destination));
    onBoardItems.add(OnBoardModel(
        title: LocaleKeys.onBoard_page2_title,
        content: LocaleKeys.onBoard_page2_desc,
        imageUrl: svgImagePaths.illustration));
    onBoardItems.add(OnBoardModel(
        title: LocaleKeys.onBoard_page3_title,
        content: LocaleKeys.onBoard_page3_desc,
        imageUrl: svgImagePaths.travel));
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  List<OnBoardModel> onBoardItems = [];

  @observable
  int currentPageIndex = 0;

  @observable
  bool isLoading = false;

  @action
  void onPageChanged(int value) {
    currentPageIndex = value;
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  Future<void> completeOnBoard() async {
    changeLoading();
    await localeManager.setBoolValue(PreferencesKeys.IS_FIRST_APP, true);
    changeLoading();
    navigation.navigateToPageClear(path: NavigationConstants.LOGIN_VIEW);
  }
}
