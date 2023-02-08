import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class VillageServiceCardWidget extends StatelessWidget {
  const VillageServiceCardWidget(
      {super.key, this.imageUrl, this.serviceName, this.onTap});
  final String? imageUrl;
  final String? serviceName;
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
                height: 18.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
            ),
            Flexible(
              flex: 1,
              child: Text(
                serviceName ?? 'اسم الخدمة غير متاح',
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  color: InUseColors.componentsColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
