import 'package:flutter/material.dart';
import 'package:villages/shared/data/emergency.dart';
import 'package:villages/views/emergency/components/emergency_card.dart';

import '../../assets/colors.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الطوارئ و الإسعافات',
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'إسعاف رأس الخليج',
              style: TextStyle(
                color: InUseColors.componentsColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: EmergencyData.emergencys.length,
              itemBuilder: (_, i) {
                return EmergencyCard(
                  emergency: EmergencyData.emergencys[i],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
