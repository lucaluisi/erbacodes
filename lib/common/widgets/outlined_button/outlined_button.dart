import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TOutlinedButton extends StatelessWidget {
  const TOutlinedButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.infinityWidth = true,
    this.padding = const EdgeInsets.symmetric(vertical: 18, horizontal: 70),
  });

  final VoidCallback onPressed;
  final String text;
  final bool infinityWidth;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.buttonRadius),
        gradient: TColors.buttonRgbGradient,
      ),
      child: Padding(
          padding: EdgeInsets.all(3),
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: infinityWidth ? Size(double.infinity, 0) : null,
              padding: padding,
            ),
            child: Text(text),
          )),
    );
  }
}
