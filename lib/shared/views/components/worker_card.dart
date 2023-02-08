import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/model/workers.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class WorkerCard extends StatelessWidget {
  const WorkerCard({
    Key? key,
    this.worker,
  }) : super(key: key);
  final WorkerModel? worker;

  @override
  Widget build(BuildContext context) {
    const textStyle1 = TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 12.5,
    );
    const textStyle = TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: 15,
    );
    return Container(
      margin: const EdgeInsets.all(
        15,
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      decoration: BoxDecoration(
        color: InUseColors.appBarColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      height: 25.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: InUseColors.appBarColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.green,
                width: 1.5,
              ),
            ),
            height: 90,
            width: 90,
            child: worker!.imageUrl != null
                ? Image.network(
                    worker!.imageUrl!,
                  )
                : Image.asset(
                    Assets.elctWorker,
                  ),
          ),
          Text(
            "الاسم : ${worker!.name!}",
            textDirection: TextDirection.rtl,
            style: textStyle,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الوظيفة: ${worker!.specialization!}",
                  textDirection: TextDirection.rtl,
                  style: textStyle1,
                ),
                Text(
                  "العنوان: ${worker!.address!}",
                  textDirection: TextDirection.rtl,
                  style: textStyle1,
                ),
              ],
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "رقم التليفون: ${worker!.phone}",
                    textDirection: TextDirection.rtl,
                    style: textStyle1,
                  ),
                ),
                Flexible(
                  child: Text(
                    "مواعيد العمل: ${worker!.workTime}",
                    textDirection: TextDirection.rtl,
                    style: textStyle1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
