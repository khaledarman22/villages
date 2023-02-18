import 'package:flutter/material.dart';

import '../../../assets/colors.dart';

class HelpCardWidget extends StatelessWidget {
  const HelpCardWidget({
    Key? key,
    this.title,
    this.onTap,
    this.icon,
  }) : super(key: key);
  final String? title;
  final void Function()? onTap;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: ListTile(
        onTap: onTap ?? () {},
        tileColor: InUseColors.appBarColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            5,
          ),
        ),
        title: Text(
          title ?? 'no title',
          style: const TextStyle(
            color: InUseColors.componentsColor,
          ),
        ),
        trailing: Icon(
          icon ?? Icons.abc,
          color: Colors.green,
        ),
      ),
    );
  }
}
