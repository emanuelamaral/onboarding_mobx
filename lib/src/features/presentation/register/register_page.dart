import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'stores/register_store.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final registerStore = RegisterStore();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Observer(
                  builder: (_) => TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Observer(builder: (_) {
                  return TextField(
                    obscureText: true,
                    controller: senhaController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Senha'),
                  );
                })),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
              child: TextButton(
                  onPressed: () {
                    final email = emailController.text;
                    final senha = senhaController.text;

                    registerStore.adicionarEmail(email);
                    registerStore.adicionarSenha(senha);

                    registerStore.cadastarUsuario().then((_) {
                      Navigator.of(context).pop();
                    }).catchError((error) {
                      print(error);
                    });
                  },
                  child: const Text('Cadastrar',
                      style: TextStyle(fontSize: 18, color: Colors.white))),
            )
          ],
        ));
  }
}
