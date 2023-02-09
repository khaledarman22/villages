import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/model/hospital.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard({Key? key, this.title, this.onTap, this.imageAssets})
      : super(key: key);
  //factory
  factory HospitalCard.fromModel(
    HospitalModel hospitalModel,
  ) {
    return HospitalCard(
      title: hospitalModel.name,
      onTap: hospitalModel.onTap,
      imageAssets: hospitalModel.assetsUrl,
    );
  }
  //vars
  final String? title;
  final void Function()? onTap;
  final String? imageAssets;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: InkWell(
        onTap: onTap ?? () {},
        child: Column(
          children: [
            Flexible(
              flex: 0,
              child: Image.asset(
                imageAssets ?? Assets.doctor,
                height: 17.h,
              ),
            ),
            Flexible(
              flex: 0,
              child: Text(
                title ?? 'الاطفال',
                style: const TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
