import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/views/medical_services/components/medical_service_card_widget.dart';

import '../../assets/assets.dart';

class MedicalServicesScreen extends StatelessWidget {
  const MedicalServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('الخدمات الصحــية'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: GridView.custom(
            // crossAxisCount: 2,
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                MedicalServiceCardWidget(
                  imageUrl: Assets.familyCare,
                  serviceTitle: 'طوارئ رأس الخليج',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                MedicalServiceCardWidget(
                  imageUrl: Assets.fastEmergency,
                  serviceTitle: 'إسعافات سريعـــة',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                MedicalServiceCardWidget(
                  imageUrl: Assets.hospital,
                  serviceTitle: "مستشفى البلد",
                  serviceSubTitle: "",
                  onTap: () {},
                ),
                MedicalServiceCardWidget(
                  imageUrl: Assets.doctor,
                  serviceTitle: 'الدكاترة الخصوصية',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
              ],
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .85,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          heroTag: 'home_button',
          backgroundColor: Colors.green,
          child: Icon(
            CupertinoIcons.home,
            size: 25.sp,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
