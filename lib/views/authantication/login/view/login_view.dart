import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../../../../core/extension/context_extension.dart';
import '../../../_product/_widgets/base_widgets/auth_base_body.dart';
import '../constants/login_constants.dart';
import '../viewmodel/login_view_model.dart';
import '../widgets/body.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          Scaffold(
        key: viewModel.scaffoldState,
        backgroundColor: context.colors.primary,
        body: AuthBaseBody(
          text: LoginConstants.HEAD_TEXT,
          child: Body(viewModel: viewModel),
        ),
      ),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onDispose: () {},
    );
  }
}
