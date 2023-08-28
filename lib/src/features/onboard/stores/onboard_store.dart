import 'package:mobx/mobx.dart';
import 'package:onboarding/onboarding.dart';

part 'onboard_store.g.dart';

class OnboardStore = _OnboardStore with _$OnboardStore;

abstract class _OnboardStore with Store {

  final List<PageModel> onboardingPagesList;

  _OnboardStore({required this.onboardingPagesList});

  @observable
  int currentIndex = 0;

  @action
  void setCurrentIndex(int index) {
    currentIndex = index;
    print(currentIndex);
  }

  @computed
  bool get shouldShowSkipButton {
    return currentIndex < onboardingPagesList.length - 1;
  }
}
