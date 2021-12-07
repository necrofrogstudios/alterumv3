import 'package:stacked/stacked.dart';

class ThemeModel {
  final int index;

  ThemeModel({
    this.index,
  });
}

class MultipleThemesViewModel extends BaseViewModel {
  List<ThemeModel> get themes => List<ThemeModel>.generate(
        5,
        (index) => ThemeModel(
          index: index,
          title: _getTitleForIndex(index),
        ),
      );
}
