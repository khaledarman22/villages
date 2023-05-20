// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:villages/assets/colors.dart';
import 'package:villages/router/router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  'تسجيل الدخول ',
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
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: InkWell(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(AppRouter.resetPasswordView.name!);
                },
                child: Text(
                  'هل نسيت كلمة المرور؟',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.componentsColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            ConstElevatedButton(
              text: 'تسجيل الدخول',
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRouter.servicesMainScreen.name!);
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRouter.signUpView.name!);
                  },
                  child: Text(
                    'اشترك الآن',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Segoe UI',
                      color: InUseColors.componentsColor,
                    ),
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
          ]),
        ),
      ),
    );
  }
}

class ConsttextFormfaild extends StatelessWidget {
  const ConsttextFormfaild({
    Key? key,
    required this.titleText,
    required this.hint,
    this.icon,
  }) : super(key: key);
  final String titleText, hint;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              titleText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Segoe UI',
                color: InUseColors.componentsColor,
              ),
            )),
        SizedBox(
          height: .5.h,
        ),
        TextFormField(
          textAlign: TextAlign.end,
          decoration: InputDecoration(
<<<<<<< HEAD
            hintText: hint,
            hintStyle: TextStyle(
              color: InUseColors.hintColor,
            ),
            prefixIcon: Icon(icon),
          ),
=======
              hintText: hint,
              hintStyle: TextStyle(
                color: InUseColors.hintColor,
              ),
              prefixIcon: Icon(icon)),
>>>>>>> 71cbeb961f162ed2f221807e459a55f157dfae4c
        ),
      ],
    );
  }
}

class ConstElevatedButton extends StatelessWidget {
  const ConstElevatedButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all(ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20))),
          backgroundColor:
              MaterialStateProperty.all(InUseColors.componentsColor),
          fixedSize: MaterialStateProperty.all(
              Size(MediaQuery.of(context).size.width, 48))),
      child: Text(text),
    );
  }
}
