import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../../../presentation/login/login_page.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Login',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
