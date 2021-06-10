import 'package:easy_localization/easy_localization.dart';

import '../constants/regex/regex.dart';

extension StringLocalization on String {
  String get locale => this.tr();
  String? get isValidEmail => contains(RegexCostant.emailValidatorRegExp)
      ? null
      : "Email does not valid";

  bool get isValidEmails => RegexCostant.emailValidatorRegExp.hasMatch(this);
}

extension ImagePathExtension on String {
  String get toSVG => 'asset/svg/$this.svg';
  String get toPNG => 'asset/image/$this.png';
}
