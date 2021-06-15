// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboard_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OnboardViewModel on _OnboardViewModelBase, Store {
  final _$currentPageIndexAtom =
      Atom(name: '_OnboardViewModelBase.currentPageIndex');

  @override
  int get currentPageIndex {
    _$currentPageIndexAtom.reportRead();
    return super.currentPageIndex;
  }

  @override
  set currentPageIndex(int value) {
    _$currentPageIndexAtom.reportWrite(value, super.currentPageIndex, () {
      super.currentPageIndex = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_OnboardViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_OnboardViewModelBaseActionController =
      ActionController(name: '_OnboardViewModelBase');

  @override
  void onPageChanged(int value) {
    final _$actionInfo = _$_OnboardViewModelBaseActionController.startAction(
        name: '_OnboardViewModelBase.onPageChanged');
    try {
      return super.onPageChanged(value);
    } finally {
      _$_OnboardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading() {
    final _$actionInfo = _$_OnboardViewModelBaseActionController.startAction(
        name: '_OnboardViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_OnboardViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPageIndex: ${currentPageIndex},
isLoading: ${isLoading}
    ''';
  }
}
