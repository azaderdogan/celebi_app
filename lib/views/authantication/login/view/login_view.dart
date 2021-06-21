import 'package:celebi_app/views/_product/_widgets/base_widgets/auht_scaffold.dart';
import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../../../../core/extension/context_extension.dart';
import '../constants/login_constants.dart';
import '../viewmodel/login_view_model.dart';
import '../widgets/body.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          AuthScaffold<LoginViewModel>(
        text: 'Login',
        viewModel: viewModel,
        onBodyBuilder: (context, viewModel) => Body(viewModel: viewModel),
      ),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onDispose: () {},
    );
  }
}
