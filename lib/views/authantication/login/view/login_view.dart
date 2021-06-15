import 'package:celebi_app/core/base/view/base_view.dart';
import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:celebi_app/views/authantication/login/viewmodel/login_view_model.dart';
import 'package:celebi_app/views/authantication/login/widgets/body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BaseView<LoginViewModel>(
      
      viewModel: LoginViewModel(),
      onPageBuilder: (BuildContext context, LoginViewModel viewModel) =>
          Scaffold(backgroundColor: context.colors.primary,body: Body()),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onDispose: () {},
    );
  }
}
