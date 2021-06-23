import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SizedTextButton extends StatelessWidget {
  SizedTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.grey,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Center(
          child: Text(
            text,
            style: context.textTheme.headline6!.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
