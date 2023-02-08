import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {Key? key, this.title, this.heroTag, this.icon, this.onPressed})
      : super(key: key);
  final String? title;
  final String? heroTag;
  final IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: FloatingActionButton(
            heroTag: heroTag,
            backgroundColor: Colors.green,
            onPressed: onPressed,
            child: Icon(
              icon,
              size: 23.sp,
            ),
          ),
        ),
        Flexible(
          flex: 0,
          child: Text(
            title!,
            style: const TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
