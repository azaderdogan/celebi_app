import 'package:flutter/material.dart';

import '../../../../core/base/view/base_view.dart';
import '../viewmodel/onboard_view_model.dart';
import '../widgets/body.dart';

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<OnboardViewModel>(
      viewModel: OnboardViewModel(),
      onPageBuilder: (BuildContext context, OnboardViewModel viewModel) =>
          Scaffold(body: Body(viewModel: viewModel)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
    );
  }
}
