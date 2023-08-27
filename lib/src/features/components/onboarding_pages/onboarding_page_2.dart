import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black87,
          border: Border.all(
            // width: 5.0,
            color: Colors.black38,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                child: Image.network('https://1.bp.blogspot.com/-NYIHJUPGrYQ/WKNxlRee2xI/AAAAAAAAAms/Uv6frPldf3w9gwzQABeGaKCOan9_hdz-gCEw/s320/Barreira%2Bde%2Bcorais.jpg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Explore o mundo a sua volta',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 25.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Este é o maior recife de corais do mundo, com mais de 2.300 km de extensão. A Grande Barreira de Corais está situada na costa nordeste do Estado de Queensland, na Austrália.'
                    ' Ela também é a maior estrutura do mundo feita apenas por organismos vivos. Um espetáculo da natureza.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white38
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}