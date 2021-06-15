import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:celebi_app/views/_product/_constants/svg_image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: SvgPicture.asset(
            SVGImagePaths().bg,
            fit: BoxFit.cover,
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
            child: Form(
              child: Column(
                children: [
                  TextFormField(),
                  TextFormField(),
                  TextFormField(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
