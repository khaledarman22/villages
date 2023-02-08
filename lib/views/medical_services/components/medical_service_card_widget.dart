import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class MedicalServiceCardWidget extends StatelessWidget {
  const MedicalServiceCardWidget(
      {super.key,
      this.imageUrl,
      this.serviceTitle,
      this.onTap,
      this.serviceSubTitle});
  final String? imageUrl;
  final String? serviceTitle;
  final String? serviceSubTitle;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        child: Column(
          children: [
            Flexible(
              flex: 0,
              child: Image.asset(
                imageUrl ?? Assets.worker,
                fit: BoxFit.cover,
                height: 18.h,
                width: 50.w,
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                serviceTitle ?? 'اسم الخدمة غير متاح',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 15.6.sp,
                  fontWeight: FontWeight.w800,
                  color: InUseColors.componentsColor,
                ),
              ),
            ),
            Text(
              serviceSubTitle ?? 'اسم الخدمة غير متاح',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14.5.sp,
                fontWeight: FontWeight.w800,
                color: InUseColors.componentsColor.withOpacity(.78),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
