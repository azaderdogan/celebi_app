import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:celebi_app/core/widgets/text/locale_text.dart';
import 'package:celebi_app/views/authantication/onboard/viewmodel/onboard_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardPageView extends StatelessWidget {
  const OnBoardPageView({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  final OnboardViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: viewModel.onBoardItems.length,
      onPageChanged: (value) => viewModel.onPageChanged(value),
      itemBuilder: (context, index) => buildColumnBody(context, index),
    );
  }

  Container buildColumnBody(BuildContext context, int index) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: SvgPicture.asset(viewModel.onBoardItems[index].imageUrl!)),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                LocaleText(
                  value: viewModel.onBoardItems[index].title ?? "",
                  textStyle: context.textTheme.headline5!
                      .copyWith(color: Colors.black),
                ),
                LocaleText(
                  value: viewModel.onBoardItems[index].content ?? "",
                  textStyle: TextStyle(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
