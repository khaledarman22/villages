import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/views/login_view/login_view.dart';

class EditPhoneNum extends StatelessWidget {
  const EditPhoneNum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تعديل رقم الهاتف '),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: InUseColors.appBarColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text(
              'أدخل رقم هاتفك',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Segoe UI',
                color: InUseColors.componentsColor,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'نرجوا منك إدخال رقم هاتفك وسنقوم بتغييره على الفور',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'Segoe UI',
                color: InUseColors.componentsColor,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: 'أدخل رقم هاتفك',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Segoe UI',
                    color: InUseColors.hintColor,
                  )),
            ),
            SizedBox(
              height: 2.h,
            ),
            ConstElevatedButton(text: 'تغيير الرقم'),
            SizedBox(
              height: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
