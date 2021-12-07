import 'package:stacked/stacked.dart';

class ThemeModel {
  final int index;
  final String title;

  ThemeModel({
    this.index,
    this.title,
  });
}

class MultipleThemesViewModel extends BaseViewModel {
  List<ThemeModel> get themes => List<ThemeModel>.generate(
        10,
        (index) => ThemeModel(
          index: index,
          title: _getTitleForIndex(index),
        ),
      );

  String _getTitleForIndex(int index) {
    switch (index) {
      case 0:
        return '  Blue';
      case 1:
        return '  Red';
      case 2:
        return 'Brown';
      case 3:
        return 'Cream';
      case 4:
        return ' Berry';
    }

    return 'No theme for index';
  }
}
