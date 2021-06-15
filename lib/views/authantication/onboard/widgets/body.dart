import 'package:celebi_app/core/widgets/text/locale_text.dart';
import 'package:celebi_app/views/_product/_widgets/buttons/normal_button.dart';
import 'package:celebi_app/views/authantication/onboard/widgets/on_board_indicator.dart';
import 'package:celebi_app/views/authantication/onboard/widgets/on_board_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/extension/context_extension.dart';
import '../viewmodel/onboard_view_model.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final OnboardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 6, child: OnBoardPageView(viewModel: viewModel)),
        Expanded(flex: 1, child: OnBoardIndicator(viewModel: viewModel)),
        Expanded(
            flex: 2,
            child: Center(
              child: Observer(builder: (_) {
                return Visibility(
                    visible: viewModel.isLoading,
                    child: CircularProgressIndicator());
              }),
            )),
        SizedTextButton(
          text: 'Next',
          onPressed: () => viewModel.completeOnBoard(),
        )
      ],
    );
  }
}
