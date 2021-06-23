import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/extension/context_extension.dart';
import '../viewmodel/onboard_view_model.dart';
import 'indicator_dot.dart';

class OnBoardIndicator extends StatelessWidget {
  final OnboardViewModel viewModel;
  const OnBoardIndicator({
    Key? key,
    required this.viewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: viewModel.onBoardItems.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: context.paddingLow,
        child: Observer(builder: (_) {
          return IndicatorDot(
            isSelected: viewModel.currentPageIndex == index,
          );
        }),
      ),
    );
  }
}
