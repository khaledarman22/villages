import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
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
          physics: BouncingScrollPhysics(),
          children: [
            Image.asset(
              'assets/images/verify.png',
              height: 30.h,
            ),
            // Image.asset('assets/images/email.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'أهلاً Asma ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Segoe UI',
                              color: InUseColors.componentsColor,
                            ),
                          )),
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            ' Asma122@gmail.com ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Segoe UI',
                              color: InUseColors.componentsColor,
                            ),
                          )),
                    ],
                  ),
                ],
              ),
            ),

            HelpCardWidget(
              title: 'الملف الشخصى',
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRouter.editProfileView.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
              firstIcon: Icons.manage_accounts,
            ),
            HelpCardWidget(
              title: 'تعديل كلمة المرور',
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRouter.editPasswordView.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
              firstIcon: Icons.visibility_off_sharp,
            ),
            HelpCardWidget(
              title: "تواصل معنا",
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRouter.connectWithUsPage.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
              firstIcon: Icons.phone_in_talk_sharp,
            ),
            HelpCardWidget(
              title: "تواصل معنا",
              onTap: () {
                Navigator.of(context).pushNamed(
                  AppRouter.connectWithUsPage.name!,
                );
              },
              icon: Icons.arrow_forward_ios,
              firstIcon: Icons.logout,
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
