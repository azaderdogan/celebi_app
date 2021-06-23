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
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Sayfanın yukarısında farklı ekranlara uyumlu bir boşluk
          Expanded(flex: 2, child: Container()),
          // Gerkli resimlerin ve resim altı yazının bulunduğu bölüm
          Expanded(flex: 8, child: OnBoardPageView(viewModel: viewModel)),
          // Kaçıncı sayfada olduğumuzu gösteren belirteçler.
          // test yorum satırı
          Expanded(
            flex: 1,
            child: Center(
              child: OnBoardIndicator(viewModel: viewModel),
            ),
          ),
          //Yükleniyor Belirteçi
          Expanded(
              flex: 1,
              child: Observer(builder: (_) {
                return Visibility(
                    visible: viewModel.isLoading,
                    child: CircularProgressIndicator());
              })),
          // Next Butonu
          Observer(builder: (_) {
            return SizedTextButton(
              text: 'Get Started',
              color: viewModel.currentPageIndex ==
                      (viewModel.onBoardItems.length - 1)
                  ? Color(0xFFF08A5D)
                  : Color(0xFF7BC4B2),
              onPressed: () => viewModel.completeOnBoard(),
            );
          }),
          // Sayfanın aşağısında farklı ekranlara uyumlu bir boşluk
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
