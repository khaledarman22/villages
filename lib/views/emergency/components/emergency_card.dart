import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/model/emergency.dart';

class EmergencyCard extends StatelessWidget {
  const EmergencyCard({Key? key, this.emergency}) : super(key: key);
  final EmergencyModel? emergency;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: InUseColors.appBarColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              Assets.emergencyCall,
              height: 10.h,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              Text(
                emergency!.rating.toString(),
                style: const TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Text(
            'العنوان : ${emergency!.adress}',
            style: const TextStyle(
              color: InUseColors.componentsColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            'رقم التليفون : ${emergency!.phoneNumber}',
            style: const TextStyle(
              color: InUseColors.componentsColor,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            ' الخدمة: ${emergency!.workTime}',
            style: const TextStyle(
              color: InUseColors.componentsColor,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
