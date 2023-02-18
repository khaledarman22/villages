import 'package:flutter/material.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/views/connect_with_us/components/connect_card_widget.dart';

// import model

class ConnectWithUsPage extends StatelessWidget {
  const ConnectWithUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'تواصل معنا',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          ConnectCardWidget(
            title: '01112223333',
            onTap: () {},
            assetImagePath: Assets.whatsappIcon,
          ),
          ConnectCardWidget(
            title: '/Village_Development',
            onTap: () {},
            assetImagePath: Assets.facebookIcon,
          ),
          ConnectCardWidget(
            title: 'Village_Development',
            onTap: () {},
            assetImagePath: Assets.linkedinIcon,
          ),
        ],
      ),
    );
  }
}
