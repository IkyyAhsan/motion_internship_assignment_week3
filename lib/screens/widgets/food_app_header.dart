import 'package:flutter/material.dart';

class FoodAppHeader extends StatelessWidget {
  const FoodAppHeader({
    super.key, required this.onPressed,
  });

  final String onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(onPressed, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
      ],
    );
  }
}