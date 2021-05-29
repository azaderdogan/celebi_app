import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/base/base_view.dart';
import '../viewmodel/login_view_model.dart';

/// view oluşturum baze view sarmala
class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late LoginViewModel viewModel;

  Widget get floatingActionButtonIncrement {
    return FloatingActionButton(onPressed: () => viewModel.incerementNumber());
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onPageBuilder: (context, value) => scafooldBody,
      onModelReady: (model) {
        model.setContext(context);
        viewModel = model;
      },
    );
  }

  Widget get scafooldBody => Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        floatingActionButton: floatingActionButtonIncrement,
        body: textNumber,
      );

  Widget get textNumber {
    return Center(
      child: Observer(
        builder: (context) => Text(
          viewModel.number.toString(),
        ),
      ),
    );
  }
}
/**
 * get kullanımı bellekte yer kaplamadığı için kullanımı avantajlıdır
 * eğer func. parametre almıyorsa getter yapmak mantıkklı
 */
