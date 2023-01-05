import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/views/educational_services/components/educational_service_card_widget.dart';

import '../../assets/assets.dart';

class EducationalServicesScreen extends StatelessWidget {
  const EducationalServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('الخدمات التعليمية'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: GridView.custom(
            // crossAxisCount: 2,
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                EducationalServiceCardWidget(
                  imageUrl: Assets.teachChild,
                  serviceTitle: 'مدرسة رأس الخليج الأساسية',
                  serviceSubTitle: 'حضانة&ابتدائى',
                  onTap: () {},
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.teachChild,
                  serviceTitle: 'مدرسة أبوالنجا للتعليم الأساسى',
                  serviceSubTitle: 'حضانة&ابتدائى',
                  onTap: () {},
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.classRoom,
                  serviceTitle: "مدرسة رأس الخليج الرسمية",
                  serviceSubTitle: 'اعدادى',
                  onTap: () {},
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school,
                  serviceTitle: 'مدرسة رأس الخليج الثانوية',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
              ],
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: .85,
              crossAxisCount: 2,
              mainAxisSpacing: 15,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          heroTag: 'home_button',
          backgroundColor: Colors.green,
          child: Icon(
            CupertinoIcons.home,
            size: 25.sp,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
