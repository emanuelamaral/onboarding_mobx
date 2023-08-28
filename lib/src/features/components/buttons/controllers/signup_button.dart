import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../../../presentation/login_page.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  // final LoginPage loginPage;

  // SignupButton({
  //   required this.loginPage
  // });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
        },
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Cadastrar',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }
}