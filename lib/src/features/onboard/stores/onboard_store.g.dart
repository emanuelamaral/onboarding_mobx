// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnboardStore on _OnboardStore, Store {
  Computed<bool>? _$shouldShowSkipButtonComputed;

  @override
  bool get shouldShowSkipButton => (_$shouldShowSkipButtonComputed ??=
          Computed<bool>(() => super.shouldShowSkipButton,
              name: '_OnboardStore.shouldShowSkipButton'))
      .value;

  late final _$currentIndexAtom =
      Atom(name: '_OnboardStore.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$_OnboardStoreActionController =
      ActionController(name: '_OnboardStore', context: context);

  @override
  void setCurrentIndex(int index) {
    final _$actionInfo = _$_OnboardStoreActionController.startAction(
        name: '_OnboardStore.setCurrentIndex');
    try {
      return super.setCurrentIndex(index);
    } finally {
      _$_OnboardStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
shouldShowSkipButton: ${shouldShowSkipButton}
    ''';
  }
}
