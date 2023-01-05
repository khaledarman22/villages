import 'package:flutter/cupertino.dart';

class RoutingModel {
  //REVIEW - this class created to provide easy way to route
  RoutingModel(
      {required this.name, required this.page, this.parameters = const {}});
  String? name;
  Widget? page;
  Map<String, dynamic>? parameters;

  Map<String, Widget Function(BuildContext)> get toRoute =>
      {name!: (c) => page!};
}
