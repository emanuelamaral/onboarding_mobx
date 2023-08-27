import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

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
                child: Image.network('https://3.bp.blogspot.com/-fSUaepVGtWs/WKNxltM57bI/AAAAAAAAAm0/eiAQZhNfl6Q0e2o0ThFXQggMyfKBM-OMQCEw/s320/canyon.jpg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Viage para lugares inesquecíveis',
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
                    'Uma das paisagens mais famosas do mundo, o Grand Canyon é, além de lindo, enorme.'
                    ' Ele tem 446 km de formações rochosas e chega a atingir até 1,5 km de profundidade.'
                    ' O vale foi moldado pela erosão ao longo de milhares de anos, à medida que as águas do rio Colorado percorriam o leito, criando esse contraste maravilhoso de cores',
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