import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:onboarding_mobx/src/features/components/checkbox/checkbox.dart';
import 'package:onboarding_mobx/src/features/presentation/pass_recovery/pass_recovery.dart';
import 'package:onboarding_mobx/src/features/presentation/register/register_page.dart';
import 'package:onboarding_mobx/src/features/presentation/register/stores/register_store.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final senhaController = TextEditingController();

    final loginSuccess = Observable(false);

    RegisterStore registerStore = RegisterStore();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                controller: senhaController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha'),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                      },
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PassRecoveryPage()));
                      },
                      child: const Text('Esqueci minha senha',
                          style: TextStyle(fontSize: 16)),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                        child: Observer(
                          builder: (_) {
                            return TextButton(
                                onPressed: () async {
                                  final email = emailController.text;
                                  final senha = senhaController.text;

                                  final loginValido = await registerStore
                                      .verificarLogin(email, senha);

                                  if (loginValido) {
                                    loginSuccess.value = true;
                                    print("deu certo");
                                  } else {
                                    loginSuccess.value = false;
                                    print('Deu ruim');
                                  }
                                },
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ));
                          },
                        )),
                    TextButton(
                      onPressed: () {},
                      child: const CheckboxComponent(),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
