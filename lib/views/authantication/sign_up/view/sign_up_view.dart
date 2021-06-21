import 'package:celebi_app/core/base/view/base_view.dart';
import 'package:celebi_app/views/_product/_widgets/base_widgets/auht_scaffold.dart';
import 'package:celebi_app/views/authantication/sign_up/viewmodel/sing_up_view_model.dart';
import 'package:flutter/material.dart';

class SingUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SingUpViewModel>(
      viewModel: SingUpViewModel(),
      onPageBuilder: (BuildContext context, SingUpViewModel viewModel) =>
          AuthScaffold<SingUpViewModel>(
        text: 'Sing Up',
        viewModel: viewModel,
        onBodyBuilder: (context, viewModel) => Container(
          width: double.infinity,
          child: Form(
            child: Column(),
          ),
        ),
      ),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
    );
  }
}
