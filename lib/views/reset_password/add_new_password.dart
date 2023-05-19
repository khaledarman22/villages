import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/router/router.dart';
import 'package:villages/views/login_view/login_view.dart';

class AddNewPassword extends StatelessWidget {
  const AddNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: Text('تعديل كلمة المرور '),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 10.h,
            ),
            Image.asset('assets/images/addnewpassword.png'),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'أدخل كلمة المرور الجديدة',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: 'Segoe UI',
                color: InUseColors.componentsColor,
              ),
            ),
            const ConsttextFormfaild(
              titleText: '',
              hint: 'كلمة المرور',
              icon: Icons.visibility_off_sharp,
            ),
            const ConsttextFormfaild(
              titleText: '',
              hint: 'تأكيد كلمة المرور ',
              icon: Icons.visibility_off_sharp,
            ),
            SizedBox(
              height: 3.h,
            ),
            ConstElevatedButton(
              text: 'حفظ وتسجيل الدخول',
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(AppRouter.servicesMainScreen.name!);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
