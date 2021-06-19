// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  final _$isLaodingAtom = Atom(name: '_LoginViewModelBase.isLaoding');

  @override
  bool get isLaoding {
    _$isLaodingAtom.reportRead();
    return super.isLaoding;
  }

  @override
  set isLaoding(bool value) {
    _$isLaodingAtom.reportWrite(value, super.isLaoding, () {
      super.isLaoding = value;
    });
  }

  final _$isLockOpenAtom = Atom(name: '_LoginViewModelBase.isLockOpen');

  @override
  bool get isLockOpen {
    _$isLockOpenAtom.reportRead();
    return super.isLockOpen;
  }

  @override
  set isLockOpen(bool value) {
    _$isLockOpenAtom.reportWrite(value, super.isLockOpen, () {
      super.isLockOpen = value;
    });
  }

  final _$fetchLoginServiceAsyncAction =
      AsyncAction('_LoginViewModelBase.fetchLoginService');

  @override
  Future<void> fetchLoginService() {
    return _$fetchLoginServiceAsyncAction.run(() => super.fetchLoginService());
  }

  final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase');

  @override
  void isLockStateChange() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.isLockStateChange');
    try {
      return super.isLockStateChange();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLaoding: ${isLaoding},
isLockOpen: ${isLockOpen}
    ''';
  }
}
