import 'package:flutter/cupertino.dart';

class HospitalModel {
  final String? name;
  final String? assetsUrl;
  final void Function(BuildContext ctx)? onTap;

  HospitalModel({
    this.name,
    this.assetsUrl,
    this.onTap,
  });
}
