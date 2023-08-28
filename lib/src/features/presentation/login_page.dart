import 'package:flutter/material.dart';
import 'package:onboarding_mobx/src/features/components/checkbox/checkbox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email'
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Cadastrar',
                        style: TextStyle(
                        fontSize: 16
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Esqueci minha senha', style: TextStyle(fontSize: 16)),
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
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login', 
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),
                        )
                      ),
                    ),
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