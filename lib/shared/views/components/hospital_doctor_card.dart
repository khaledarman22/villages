import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/model/hospital_doctor.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class HospitalDoctorCard extends StatelessWidget {
  const HospitalDoctorCard({Key? key, this.doctor}) : super(key: key);
  final HospitalDoctorModel? doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: InUseColors.appBarColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "د/${doctor?.name!}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: InUseColors.componentsColor,
                    fontSize: 16,
                  ),
                ),
                Text(
                  doctor!.specialization!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: InUseColors.componentsColor,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text(
                      doctor!.rating.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: InUseColors.componentsColor,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Flexible(
            child: Image.asset(
              Assets.doctorFace,
              height: 16.h,
            ),
          ),
        ],
      ),
    );
  }
}
