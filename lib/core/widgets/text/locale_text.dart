import 'package:flutter/material.dart';

import '.././../../core/extension/string_extension.dart';

class LocaleText extends StatelessWidget {
  final String value;
  TextStyle? textStyle;

  LocaleText({
    Key? key,
    required this.value,
    this.textStyle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      value.locale,
      style: textStyle ?? null,
    );
  }
}
