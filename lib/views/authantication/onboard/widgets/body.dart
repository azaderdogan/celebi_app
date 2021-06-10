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
      children: [
        Expanded(
          flex: 4,
          child: PageView.builder(
            itemCount: viewModel.onBoardItems.length,
            onPageChanged: (value) => viewModel.onPageChanged(value),
            itemBuilder: (context, index) => Container(
              color: context.theme.scaffoldBackgroundColor,
              child: Column(
                children: [
                  Expanded(
                      flex: 4,
                      child: SvgPicture.asset(
                          viewModel.onBoardItems[index].imageUrl!)),
                  Expanded(
                    flex: 2,
                    child: Observer(builder: (_) {
                      return RichText(
                        text: TextSpan(children: <TextSpan>[
                          TextSpan(
                            text:
                                '${viewModel.onBoardItems[viewModel.currentPageIndex].title}\n',
                            style: context.textTheme.headline2,
                          ),
                          TextSpan(
                            text: viewModel
                                .onBoardItems[viewModel.currentPageIndex]
                                .content,
                            style: context.textTheme.bodyText1,
                          ),
                        ]),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
            itemCount: viewModel.onBoardItems.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: context.paddingLow,
              child: Observer(builder: (_) {
                return CircleAvatar(
                  radius: viewModel.currentPageIndex == index ? 10 : 5,
                  child: AnimatedOpacity(
                    opacity: viewModel.currentPageIndex == index ? 1 : 0,
                    duration: context.lowDuration,
                    child: Text(index.toString()),
                  ),
                );
              }),
            ),
          ),
        )
      ],
    );
  }
}
