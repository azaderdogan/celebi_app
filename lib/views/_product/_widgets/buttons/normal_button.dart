import 'package:celebi_app/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SizedTextButton extends StatelessWidget {
  const SizedTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(context.highValue),
              side: BorderSide(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
