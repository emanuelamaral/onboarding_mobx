import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

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
                child: Image.network('https://4.bp.blogspot.com/-xnBYGXOA5wA/WKNxlhPm4aI/AAAAAAAAAmw/85JXK67Z1egFy6bsLst7goiIaaNqJRchgCEw/s320/MachuPicchu.jpg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tenha histórias para contar',
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
                    'Machu Picchu é o berço da civilização Inca, uma das civilizações antigas mais avançadas e misteriosas da história.'
                    ' A cidade se mistura com a paisagem fantástica no topo de uma montanha de 2.400 m de altitude, no Peru.'
                    ' O lugar é considerado patrimônio mundial pela Unesco e é um dos pontos turísticos mais visitados do país.' ,
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