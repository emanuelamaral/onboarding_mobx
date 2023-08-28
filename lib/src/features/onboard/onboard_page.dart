import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:onboarding_mobx/src/features/components/onboarding_pages/onboarding_page_1.dart';
import 'package:onboarding_mobx/src/features/onboard/stores/onboard_store.dart';
import '../../app_widget.dart';
import '../components/buttons/controllers/signup_button.dart';
import '../components/buttons/controllers/skip_button.dart';
import '../components/onboarding_pages/onboarding_page_2.dart';
import '../components/onboarding_pages/onboarding_page_3.dart';
import 'package:flutter_mobx/flutter_mobx.dart';



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

    final _onboardStore = OnboardStore(onboardingPagesList: onboardingPagesList);

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
            _onboardStore.setCurrentIndex(pageIndex);
             // setState(() {
              //index = pageIndex;
           //});
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
                      Observer(
                        builder: (_) {
                          return _onboardStore.shouldShowSkipButton ? SkipButton(onTap: () {
                            if (_onboardStore.currentIndex < pagesLength - 1){
                              _onboardStore.setCurrentIndex(_onboardStore.currentIndex + 1);
                              _onboardStore.setCurrentIndex(_onboardStore.currentIndex);
                              setIndex(_onboardStore.currentIndex);
                            }
                          })
                          : const SignupButton();
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