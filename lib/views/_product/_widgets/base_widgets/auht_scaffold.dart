import 'package:celebi_app/core/base/viewmodel/base_view_model.dart';
import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:celebi_app/views/_product/_constants/svg_image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthScaffold<T extends BaseViewModel> extends StatefulWidget {
  const AuthScaffold({
    Key? key,
    required this.text,
    required this.viewModel,
    required this.onBodyBuilder,
  }) : super(key: key);

  final String text;
  final Widget Function(BuildContext context, T viewModel) onBodyBuilder;
  final T viewModel;

  @override
  _AuthScaffoldState<T> createState() => _AuthScaffoldState<T>();
}

class _AuthScaffoldState<T extends BaseViewModel>
    extends State<AuthScaffold<T>> {
  late T model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.viewModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: model.scaffoldState,
        backgroundColor: context.colors.primary,
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Stack(
                children: [
                  Center(
                    child: SvgPicture.asset(
                      SVGImagePaths().bg,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: context.height * 0.4 * 0.4,
                    left: context.normalValue,
                    right: context.normalValue,
                    child: Text(
                      widget.text,
                      style: context.textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: context.colors.secondary,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50)),
                  ),
                  child: widget.onBodyBuilder(context, model)),
            ),
          ],
        ));
  }
}
