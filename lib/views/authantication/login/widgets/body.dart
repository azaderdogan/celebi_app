import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/extension/context_extension.dart';
import '../../../../core/extension/string_extension.dart';
import '../../../_product/_constants/svg_image_path.dart';
import '../../../_product/_widgets/buttons/normal_button.dart';
import '../viewmodel/login_view_model.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.viewModel,
  }) : super(key: key);
  final LoginViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Form(
        key: viewModel.formState,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            buildEmailField(context),
            // şifrenin görünürlüğü için obersvera alındı
            SizedBox(height: context.normalValue),
            buildPasswordField(context),

            buildForgetPassword(),
            Spacer(
              flex: 2,
            ),
            buildLoginButton(),
            Spacer(),
            buildSingUpText()
          ],
        ),
      ),
    );
  }

  Row buildSingUpText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(onPressed: () {}, child: Text('Sign Up'))
      ],
    );
  }

  Widget buildLoginButton() {
    return Observer(builder: (_) {
      return SizedTextButton(
          text: "Login", onPressed: () => viewModel.fetchLoginService());
    });
  }

  Align buildForgetPassword() {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
            onPressed: viewModel.isLaoding ? null : () {},
            child: Text('Forget password')));
  }

  TextFormField buildEmailField(BuildContext context) {
    return TextFormField(
      controller: viewModel.emailController,
      validator: (value) => value!.isValidEmail,
      decoration: InputDecoration(
          labelText: 'Email',
          icon: Container(
              width: context.normalValue,
              height: context.normalValue,
              child: SvgPicture.asset(SVGImagePaths().email))),
    );
  }

  Observer buildPasswordField(BuildContext context) {
    return Observer(builder: (_) {
      return TextFormField(
          controller: viewModel.passwordController,
          obscureText: viewModel.isLockOpen,
          validator: (value) =>
              value!.isNotEmpty ? null : 'This field required',
          decoration: InputDecoration(
            labelText: 'Password',
            icon: Container(
              width: context.normalValue,
              height: context.normalValue,
              child: SvgPicture.asset(SVGImagePaths().password),
            ),
            suffixIcon: IconButton(
                onPressed: () {
                  print("pressed");
                  viewModel.isLockStateChange();
                },
                icon: Icon(viewModel.isLockOpen
                    ? Icons.visibility
                    : Icons.visibility_off)),
          ));
    });
  }
}
