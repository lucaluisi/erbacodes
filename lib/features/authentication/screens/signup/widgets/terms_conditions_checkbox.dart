import 'package:erba_coders/utils/constants/colors.dart';
import 'package:erba_coders/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TermsConditionsCheckbox extends StatelessWidget {
  const TermsConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: 'I agree to ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Privacy Policy',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: TColors.primary)),
              TextSpan(
                  text: ' and ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: 'Terms of Use',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: TColors.primary)),
            ],
          ),
        )
      ],
    );
  }
}
