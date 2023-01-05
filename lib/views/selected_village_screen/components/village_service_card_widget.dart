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
              child: Card(
                color: InUseColors.backgroundColor,
                elevation: 10,
                child: Image.asset(
                  imageUrl ?? Assets.worker,
                ),
              ),
            ),
            Text(
              serviceName ?? 'اسم الخدمة غير متاح',
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: InUseColors.componentsColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
