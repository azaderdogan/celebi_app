import 'package:celebi_app/core/base/view/base_view.dart';
import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:celebi_app/views/authantication/login/viewmodel/login_view_model.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  late LoginViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (context, value) => buildScaffold(context),
      onModelReady: (model) {
        model.setContext(context);
        viewModel = model;
      },
    );
  }

  Scaffold buildScaffold(BuildContext context) => Scaffold(
        body: ListView(
          children: [
            Container(
              color: context.colors.background,
              height: context.width,
              child: buildText(context),
            )
          ],
        ),
      );

  Text buildText(BuildContext context) {
    return Text(
      'Merhaba app ',
      style: context.textTheme.headline6,
    ); 
  }
}
