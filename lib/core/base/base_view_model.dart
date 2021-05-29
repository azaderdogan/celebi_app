import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import '../logger.dart';

abstract class BaseViewModel {
  String? _title;
  bool? _busy;
  Logger? log;
  bool? _isDisposed = false;
  BuildContext? context;
  BaseViewModel({
    bool busy = false,
    String? title,
  })  : _busy = busy,
        _title = title {
    log = getLogger(title ?? this.runtimeType.toString());
  }

  bool get busy => this._busy!;
  bool get isDisposed => this._isDisposed!;
  String get title => _title ?? this.runtimeType.toString();

  void setContext(BuildContext context);
  void init();
}
