import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/router/router.dart';
import 'package:villages/views/login_view/login_view.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 20.h,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'استعادة كلمة المرور ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.componentsColor,
                  ),
                )),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'يمكنك استعادة كلمة المرور الخاصة بك من خلال البريد الإلكترونى الخاص بك',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Segoe UI',
                color: InUseColors.componentsColor,
              ),
            ),
            Image.asset('assets/images/resetpassword.png'),
            SizedBox(
              height: 1.h,
            ),
            const ConsttextFormfaild(
              titleText: 'البريد الإلكترونى',
              hint: 'يرجى إدخال البريد الإلكترونى',
            ),
            SizedBox(
              height: 2.h,
            ),
            ConstElevatedButton(
<<<<<<< HEAD
              text: 'استعادة كلمة المرور',
=======
              text: 'تسجيل الدخول',
>>>>>>> 71cbeb961f162ed2f221807e459a55f157dfae4c
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouter.verifyView.name!);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
