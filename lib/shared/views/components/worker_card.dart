import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/model/workers.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class WorkerCard extends StatelessWidget {
  const WorkerCard({
    Key? key,
    this.worker,
    this.onTap,
  }) : super(key: key);
  final WorkerModel? worker;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
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
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
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
                    height: 120,
                    width: 120,
                    child: worker!.imageUrl != null
                        ? Image.asset(
                            worker!.imageUrl!,
                          )
                        : Image.asset(
                            Assets.elctWorker,
                          ),
                  ),
                  Row(
                    children: [
                      Text(
                        worker!.rate!.toString(),
                        style: const TextStyle(
                          color: InUseColors.componentsColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.person_outline_outlined,
                        color: InUseColors.componentsColor,
                        size: 30,
                      ),
                      Text(
                        worker!.name!,
                        textDirection: TextDirection.rtl,
                        style: textStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: InUseColors.componentsColor,
                        size: 30,
                      ),
                      Text(
                        worker!.phone!,
                        textDirection: TextDirection.rtl,
                        style: textStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: InUseColors.componentsColor,
                        size: 30,
                      ),
                      Text(
                        worker!.phone!,
                        textDirection: TextDirection.rtl,
                        style: textStyle,
                      ),
                    ],
                  ),
                  Text(
                    worker!.workTime!,
                    style: textStyle,
                  ),
                  ElevatedButton(
                    onPressed: onTap ?? () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      ),
                      backgroundColor: InUseColors.submitIconColor,
                    ),
                    child: const Text(
                      'اطلب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
