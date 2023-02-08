import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/shared/data/teachers.dart';
import 'package:villages/shared/views/layouts/school_preview/school_preview_page.dart';
import 'package:villages/views/educational_services/components/educational_service_card_widget.dart';

import '../../assets/assets.dart';
import '../../model/teacher.dart';

class EducationalServicesScreen extends StatelessWidget {
  const EducationalServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الخدمات التعليمية'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.only(top: 6.h),
          child: GridView.custom(
            // crossAxisCount: 2,
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                EducationalServiceCardWidget(
                  imageUrl: Assets.school,
                  serviceTitle: 'مدرسة رأس الخليج الابتدائية',
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      'مدرسة رأس الخليج الابتدائية',
                      TeacherData.i.rasPrepSchool,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school,
                  serviceTitle: 'مدرسة أبوالنجا للتعليم الأساسى',
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      'مدرسة أبوالنجا للتعليم الأساسى',
                      TeacherData.i.rasPrepSchoolMamdoh,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school2,
                  serviceTitle: "مدرسة الرسمية إعدادي",
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      "مدرسة الرسمية إعدادي",
                      TeacherData.i.rasSecondSchool,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school2,
                  serviceTitle: 'مدرسة ممدوح ابوالنجا إعدادي',
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      'مدرسة ممدوح ابوالنجا إعدادي',
                      TeacherData.i.rasSecondSchool2,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school,
                  serviceTitle: 'مدرسة رأس الخليج الثانوية',
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      'مدرسة رأس الخليج الثانوية',
                      TeacherData.i.rasFinalSchool,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school,
                  serviceTitle: "معهد رأس الخليج الابتدائي",
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      "معهد رأس الخليج الابتدائي",
                      TeacherData.i.rasPrepSchoolAzhar,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school2,
                  serviceTitle: "معهد بنين رأس الخليج الثانوي",
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      "معهد بنين رأس الخليج الثانوي",
                      TeacherData.i.rasFinalSchoolAzhar,
                    );
                  },
                ),
                EducationalServiceCardWidget(
                  imageUrl: Assets.school2,
                  serviceTitle: "مدرسة الشحات شتا التجارية",
                  serviceSubTitle: '',
                  onTap: () {
                    toPage(
                      context,
                      "مدرسة الشحات شتا التجارية",
                      TeacherData.i.rasTradeSchool,
                    );
                  },
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
      ),
    );
  }

  void toPage(BuildContext context, String title, List<TeacherModel> model) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => SchoolPreviewPage(
          pageTitle: title,
          teachers: model,
        ),
      ),
    );
  }
}
