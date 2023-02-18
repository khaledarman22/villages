import 'package:flutter/material.dart';
import 'package:villages/router/router.dart';
import 'package:villages/shared/views/components/navbar_in_use.dart';
import 'package:villages/views/app_helping/components/help_card_widget.dart';

class AppHelpingPage extends StatelessWidget {
  const AppHelpingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("المساعدة"),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 30,
                right: 10,
                bottom: 10,
              ),
              child: Text(
                'حول البرنامج',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            HelpCardWidget(
              title: 'خدمات البرنامج',
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                  AppRouter.selectedVillageScreen.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
            ),
            HelpCardWidget(
              title: "تعرف علينا",
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRouter.knowMoreAUPage.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
            ),
            HelpCardWidget(
              title: "تواصل معنا",
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRouter.connectWithUsPage.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavbarInUse(
        page: 3,
      ),
    );
  }
}
