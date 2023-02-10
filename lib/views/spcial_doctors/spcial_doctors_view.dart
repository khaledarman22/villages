import 'package:flutter/material.dart';

import 'package:villages/shared/data/spcial_doctor.dart';
import 'package:villages/views/spcial_doctors/components/spcial_doctor_card.dart';

class SpcialDoctorsPage extends StatelessWidget {
  const SpcialDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'العيادات الخصوصية',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: SpcialDoctorData.doctors.length,
        itemBuilder: (_, i) => SpcialDoctorCard(
          doctor: SpcialDoctorData.doctors[i],
        ),
      ),
    );
  }
}
