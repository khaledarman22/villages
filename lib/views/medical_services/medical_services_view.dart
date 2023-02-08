import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/views/medical_services/components/medical_service_card_widget.dart';

import '../../assets/assets.dart';

class MedicalServicesScreen extends StatelessWidget {
  const MedicalServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الخدمات الصحــية'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: GridView.custom(
          // crossAxisCount: 2,
          childrenDelegate: SliverChildListDelegate.fixed(
            [
              MedicalServiceCardWidget(
                imageUrl: Assets.fastEmergency,
                serviceTitle: 'إسعافات سريعـــة',
                serviceSubTitle: '',
                onTap: () {},
              ),
              MedicalServiceCardWidget(
                imageUrl: Assets.pCare,
                serviceTitle: 'طوارئ رأس الخليج',
                serviceSubTitle: '',
                onTap: () {},
              ),
              MedicalServiceCardWidget(
                imageUrl: Assets.doctors,
                serviceTitle: 'الدكاترة الخصوصية',
                serviceSubTitle: '',
                onTap: () {},
              ),
              MedicalServiceCardWidget(
                imageUrl: Assets.hospital,
                serviceTitle: "مستشفى البلد",
                serviceSubTitle: "",
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
    );
  }
}
