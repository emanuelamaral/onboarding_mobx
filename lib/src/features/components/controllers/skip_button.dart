import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class SkipButton extends StatelessWidget {
  // const SkipButton({super.key});

  final VoidCallback onTap;

  const SkipButton({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: onTap,
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Próximo',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }
}