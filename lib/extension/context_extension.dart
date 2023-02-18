import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTh => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
  get args => ModalRoute.of(this)?.settings.arguments;
  bool get isLandScape =>
      MediaQuery.of(this).orientation == Orientation.landscape;
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
}
