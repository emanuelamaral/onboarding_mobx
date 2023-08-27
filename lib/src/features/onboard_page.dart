import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:onboarding_mobx/src/features/components/controllers/signup_button.dart';
import 'package:onboarding_mobx/src/features/components/controllers/skip_button.dart';
import 'package:onboarding_mobx/src/features/components/onboarding_pages/onboarding_page_1.dart';
import '../app_widget.dart';
import 'components/onboarding_pages/onboarding_page_2.dart';
import 'components/onboarding_pages/onboarding_page_3.dart';

class OnboardPage extends State<AppWidget> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: const OnboardingPage1()
    ),
    PageModel(
      widget: const OnboardingPage2()
    ),
    PageModel(
      widget: const OnboardingPage3()
    )
  ];

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: background,
                border: Border.all(
                  width: 0.0,
                  color: background,
                ),
              ),
              child: ColoredBox(
                color: background,
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.line(
                            lineDesign: LineDesign(
                              lineType: DesignType.line_uniform,
                            ),
                          ),
                        ),
                      ),
                      index == pagesLength - 1
                        ? const SignupButton()
                        : SkipButton(onTap: () {
                            if (index < pagesLength - 1){
                              index++;
                              setIndex(index);
                            }
                        }
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}