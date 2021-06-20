import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:celebi_app/views/_product/_constants/svg_image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthBaseBody extends StatelessWidget {
  const AuthBaseBody({
    Key? key,
    required this.text,
    required this.child,
  }) : super(key: key);

  final String text;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  text,
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
                borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              ),
              child: child),
        ),
      ],
    );
  }
}
