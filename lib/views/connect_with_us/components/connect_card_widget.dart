import 'package:flutter/material.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class ConnectCardWidget extends StatelessWidget {
  const ConnectCardWidget({
    Key? key,
    this.title,
    this.onTap,
    this.assetImagePath,
  }) : super(key: key);
  final String? title;
  final void Function()? onTap;
  final String? assetImagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListTile(
        onTap: onTap ?? () {},
        tileColor: InUseColors.appBarColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            6,
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            assetImagePath ?? Assets.whatsappIcon,
          ),
        ),
        title: Text(
          title ?? '',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: InUseColors.componentsColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
