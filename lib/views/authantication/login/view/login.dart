import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../../../../core/extension/context_extension.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          Scaffold(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
    );
  }
}
