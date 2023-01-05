import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class VillageWorkerCardWidget extends StatelessWidget {
  const VillageWorkerCardWidget({
    Key? key,
    this.name,
    this.phoneNumber,
    this.specialization,
    this.onTap,
  }) : super(key: key);
  final String? name;
  final String? phoneNumber;
  final String? specialization;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return InkWell(
      onTap: () {},
      child: Container(
        color: InUseColors.appBarColor,
        height: isPortrait ? 20.h : 40.h,
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flex(
              direction: Axis.vertical,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'الإسم :${name ?? 'اسم غير موجود'}',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'المهنة:  ${specialization ?? 'مجال التخصص غير محدد'}',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'رقم التليفون:  ${phoneNumber ?? 'لايوجد رقم'}',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Image.asset(
              Assets.workerMan,
              height: 55.h,
              width: 25.w,
            ),
          ],
        ),
      ),
    );
  }
}
