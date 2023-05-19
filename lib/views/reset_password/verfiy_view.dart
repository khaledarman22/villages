import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/router/router.dart';
import 'package:villages/views/login_view/login_view.dart';

import 'widgets/otp.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  final TextEditingController oneController = TextEditingController();

  final TextEditingController twoController = TextEditingController();

  final TextEditingController threeController = TextEditingController();

  final TextEditingController fourController = TextEditingController();

  @override
  void dispose() {
    oneController.dispose();
    twoController.dispose();
    threeController.dispose();
    fourController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 20.h,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'تحقق من بريدك الإلكترونى  ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.componentsColor,
                  ),
                )),
            SizedBox(
              height: 2.h,
            ),
            Image.asset('assets/images/verify.png'),
            SizedBox(
              height: 2.h,
            ),
            const Text(
              'أدخل رمز الأمان المرسل إلى بريدك الإلكترونى لإعادة تعيين كلمة المرور',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Segoe UI',
                color: InUseColors.componentsColor,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textFieldOTP(
                  first: true,
                  last: false,
                  context: context,
                  controller: oneController,
                ),
                const SizedBox(
                  width: 5,
                ),
                textFieldOTP(
                  first: false,
                  last: false,
                  context: context,
                  controller: twoController,
                ),
                const SizedBox(
                  width: 5,
                ),
                textFieldOTP(
                  first: false,
                  last: false,
                  context: context,
                  controller: threeController,
                ),
                const SizedBox(
                  width: 5,
                ),
                textFieldOTP(
                  first: false,
                  last: false,
                  context: context,
                  controller: fourController,
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            ConstElevatedButton(
              text: 'إرسال',
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouter.addNewPassword.name!);
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: InkWell(
                onTap: () {},
                child: const Text(
                  'اطلب رمزًا جديدًا',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.componentsColor,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
