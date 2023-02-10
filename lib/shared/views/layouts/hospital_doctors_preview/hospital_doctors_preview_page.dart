import 'package:flutter/material.dart';

import 'package:villages/model/hospital_doctor.dart';
import 'package:villages/shared/views/components/hospital_doctor_card.dart';

class HospitalDoctorsPreviewPage extends StatelessWidget {
  const HospitalDoctorsPreviewPage({
    Key? key,
    required this.doctors,
    required this.title,
  }) : super(key: key);
  final List<HospitalDoctorModel> doctors;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (_, i) => HospitalDoctorCard(
          doctor: doctors[i],
        ),
      ),
    );
  }
}
