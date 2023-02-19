import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/model/hospital_doctor.dart';
import 'package:villages/shared/views/layouts/make_apointment/make_apointment_page.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class HospitalDoctorCard extends StatelessWidget {
  const HospitalDoctorCard({
    Key? key,
    this.doctor,
    this.onTap,
  }) : super(key: key);
  final HospitalDoctorModel? doctor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      margin: const EdgeInsets.all(
        25,
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
                ),
                ElevatedButton(
                  onPressed: onTap ??
                      () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => MakeAppointmentPage(),
                          ),
                        );
                      },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                    backgroundColor: InUseColors.submitIconColor,
                  ),
                  child: const Text(
                    'إحجز',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
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
