import 'package:flutter/material.dart';

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: isSelected ? 8 : 5,
      backgroundColor:
          isSelected ? Colors.orange : Colors.orange.withOpacity(0.3),
    );
  }
}
