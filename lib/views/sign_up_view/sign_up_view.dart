import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/views/login_view/login_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 10.h,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'إنشاء حساب جديد  ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.componentsColor,
                  ),
                )),
            SizedBox(
              height: 4.h,
            ),
            const ConsttextFormfaild(
              titleText: 'الإسم الأول',
              hint: 'يرجى إدخال الإسم الأول',
            ),
            SizedBox(
              height: 2.h,
            ),
            const ConsttextFormfaild(
              titleText: 'اسم العائلة',
              hint: 'يرجى إدخال اسم العائلة',
            ),
            SizedBox(
              height: 2.h,
            ),
            const ConsttextFormfaild(
              titleText: 'البريد الإلكترونى',
              hint: 'يرجى إدخال البريد الإلكترونى',
            ),
            SizedBox(
              height: 2.h,
            ),
            const ConsttextFormfaild(
<<<<<<< HEAD
              titleText: 'كلمة المرور',
=======
              titleText: 'تأكيد كلمة المرور',
>>>>>>> 71cbeb961f162ed2f221807e459a55f157dfae4c
              hint: 'يرجى إدخال كلمة المرور',
              icon: Icons.visibility_off_sharp,
            ),
            SizedBox(
              height: 2.h,
            ),
            const ConsttextFormfaild(
<<<<<<< HEAD
              titleText: 'تأكيد كلمة المرور',
=======
              titleText: 'كلمة المرور',
>>>>>>> 71cbeb961f162ed2f221807e459a55f157dfae4c
              hint: 'يرجى إدخال كلمة المرور',
              icon: Icons.visibility_off_sharp,
            ),
            SizedBox(
              height: 3.h,
            ),
            ConstElevatedButton(
<<<<<<< HEAD
              text: 'اشترك الآن',
=======
              text: 'تسجيل الدخول',
>>>>>>> 71cbeb961f162ed2f221807e459a55f157dfae4c
              onPressed: () {},
            ),
            SizedBox(
              height: 2.h,
            ),
<<<<<<< HEAD
=======
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'اشترك الآن',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.componentsColor,
                  ),
                ),
                Text(
                  'ليس لديك حساب؟',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.hintColor,
                  ),
                ),
              ],
            ),
>>>>>>> 71cbeb961f162ed2f221807e459a55f157dfae4c
          ]),
        ),
      ),
    );
  }
}
