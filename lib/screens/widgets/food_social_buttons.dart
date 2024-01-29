import 'package:flutter/material.dart';

class FoodSocialButtons extends StatelessWidget {
  const FoodSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Image(image: AssetImage('assets/images/social_buttons.png')),
        )
      ],
    );
  }
}