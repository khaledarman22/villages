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
              titleText: 'كلمة المرور',
              hint: 'يرجى إدخال كلمة المرور',
              icon: Icons.visibility_off_sharp,
            ),
            SizedBox(
              height: 2.h,
            ),
            const ConsttextFormfaild(
              titleText: 'تأكيد كلمة المرور',
              hint: 'يرجى إدخال كلمة المرور',
              icon: Icons.visibility_off_sharp,
            ),
            SizedBox(
              height: 3.h,
            ),
            ConstElevatedButton(
              text: 'اشترك الآن',
              onPressed: () {},
            ),
            SizedBox(
              height: 2.h,
            ),
          ]),
        ),
      ),
    );
  }
}
