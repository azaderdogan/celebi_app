import 'package:celebi_app/core/init/lang/locale_keys.g.dart';
import 'package:celebi_app/core/widgets/text/locale_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../../core/base/view/base_view.dart';
import '../viewmodel/test_view_model.dart';

/// view oluşturum baze view sarmala
class TestView extends StatefulWidget {
  @override
  _TestViewState createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  late TestViewModel viewModel;

  Widget get floatingActionButtonIncrement {
    return FloatingActionButton(onPressed: () => viewModel.incerementNumber());
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onPageBuilder: (context, value) => scafooldBody,
      onModelReady: (model) {
        model.setContext(context);
        viewModel = model;
      },
    );
  }

// : Text(LocaleKeys.welcome).tr(), tr gelmesi için Easylocalizaiton çağrılmalı bir kez
// : Text(LocaleKeys.welcome.locale) tr gelmesi için Strinextensions  çağrılmalı bir kez
  Widget get scafooldBody => Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.welcome.locale),
        ),
        floatingActionButton: floatingActionButtonIncrement,
        body: textNumber,
      );

  Widget get textNumber {
    return Center(
      child: Observer(
        builder: (context) => LocaleText(
          value: viewModel.number.toString(),
        ),
      ),
    );
  }
}
/**
 * get kullanımı bellekte yer kaplamadığı için kullanımı avantajlıdır
 * eğer func. parametre almıyorsa getter yapmak mantıkklı
 */