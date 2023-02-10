import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/router/router.dart';
import 'package:villages/shared/views/components/nav_bar_item.dart';
import 'package:villages/views/services_main_screen/components/services_card_widget.dart';
import 'package:villages/views/services_main_screen/components/village_info_widget.dart';

import '../../controller/services_main_screen/services_main_screen_controller.dart';
import '../../shared/data/teachers.dart';
import '../../shared/views/layouts/school_preview/school_preview_page.dart';
// import model

class ServicesMainScreen extends StatefulWidget {
  const ServicesMainScreen({super.key});

  @override
  State<ServicesMainScreen> createState() => _ServicesMainScreenState();
}

class _ServicesMainScreenState extends State<ServicesMainScreen> {
  @override
  Widget build(BuildContext context) {
    var listVillages = [
      VillageInfoWidget(
        imageURl: Assets.villagePreview,
        villageName: 'قرية رأس الخليج البلد',
        villageShortInfo:
            'هى إحدى القرى التابعة لمركز شربين محافظة الدقهلية وتعد من أكبر القرى داخل مركز شربين.',
        knowMoreOnPressed: () {
          Navigator.of(context).pushNamed(
            AppRouter.selectedVillageScreen.name!,
            arguments: {
              'village_name': 'قرية رأس الخليج البلد',
            },
          );
        },
      ),
      VillageInfoWidget(
        imageURl: Assets.villagePreview,
        villageName: 'قرية كفر الترعة الجديد',
        villageShortInfo:
            'هى إحدى القرى التابعة لمركز شربين محافظة الدقهلية وتعد من أكبر القرى داخل مركز شربين.',
        knowMoreOnPressed: () {
          Navigator.of(context).pushNamed(
            AppRouter.selectedVillageScreen.name!,
            arguments: {
              'village_name': 'قرية كفر الترعة الجديد',
            },
          );
        },
      ),
    ];
    return ChangeNotifierProvider<ServicesMainScreenController>(
      create: (_) => ServicesMainScreenController.instance,
      child: Consumer<ServicesMainScreenController>(
        builder: ((
          context,
          ctrl,
          child,
        ) {
          final isPortrait =
              MediaQuery.of(context).orientation == Orientation.portrait;
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size(
                double.infinity,
                isPortrait ? 24.h : 25.h,
              ),
              child: SafeArea(
                child: Container(
                  margin: const EdgeInsets.all(
                    18,
                  ),
                  height: isPortrait ? 7.h : 14.h,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          size: 35,
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          textDirection: TextDirection.rtl,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(
                              maxWidth: isPortrait ? double.infinity : 25.w,
                            ),
                            hintText: 'البحــث عن قرية او خدمة داخل القرية',
                            hintTextDirection: TextDirection.rtl,
                            filled: true,
                            fillColor: InUseColors.appBarColor,
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: InUseColors.appBarColor,
                              ),
                            ),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: InUseColors.componentsColor,
                              ),
                            ),
                            suffixIcon: const Icon(
                              Icons.search,
                              color: InUseColors.componentsColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: ListView(
              children: [
                /*  CarouselSlider(
                  items: listVillages,
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 7),
                    height: isPortrait ? 27.h : 52.h,
                    viewportFraction: isPortrait ? 0.99 : 0.55,

                    //aspectRatio: 1.8,
                    enableInfiniteScroll: true,
                    onPageChanged: ((index, _) {
                      ctrl.changePage(index);
                    }),
                  ),
                ), */
                /*  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        color: ctrl.page == 0 ? Colors.green : Colors.grey,
                        height: 15,
                        width: 15,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    ClipOval(
                      child: Container(
                        color: ctrl.page == 1 ? Colors.green : Colors.grey,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ],
                ), */
                listVillages[0],
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الخدمات الجديدة التى تمت إضافتها ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: InUseColors.componentsColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      Divider(
                        color: InUseColors.componentsColor,
                        indent: isPortrait ? 35.w : 65.w,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: isPortrait ? 25.h : 30.h,
                  child: GridView.count(
                    crossAxisCount: isPortrait ? 2 : 3,
                    childAspectRatio: 2,
                    children: [
                      ServicesCardWidget(
                        serviceName: 'مدرسة أبو النجا',
                        serviceImageURL: Assets.school,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) => SchoolPreviewPage(
                                pageTitle: 'مدرسة ممدوح ابوالنجا إعدادي',
                                teachers: TeacherData.i.rasSecondSchool2,
                              ),
                            ),
                          );
                        },
                      ),
                      const ServicesCardWidget(
                        serviceName: 'مواصلات النقل',
                        serviceImageURL: Assets.transactions,
                      ),
                      ServicesCardWidget(
                        serviceName: 'مستشفى البلد',
                        serviceImageURL: Assets.hospital,
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            AppRouter.villageHospitalPage.name!,
                          );
                        },
                      ),
                      ServicesCardWidget(
                        serviceName: 'إسعافات سريعة',
                        serviceImageURL: Assets.fastEmergency,
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            AppRouter.emergencyPage.name!,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'الخدمات الأعلى تقييم داخل القرية ',
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            color: InUseColors.componentsColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                      Divider(
                        color: InUseColors.componentsColor,
                        indent: isPortrait ? 35.w : 65.w,
                        thickness: 2,
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListTile(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => SchoolPreviewPage(
                                  pageTitle: 'مدرسة الخليج الثانوية',
                                  teachers: TeacherData.i.rasFinalSchool,
                                ),
                              ),
                            );
                          },
                          tileColor: InUseColors.appBarColor,
                          title: const Text(
                            'مدرسة الخليج الثانوية',
                            style: TextStyle(
                              color: InUseColors.componentsColor,
                            ),
                          ),
                          subtitle: const Text(
                            'السبب : عدم وجود عجز بالمدرسين',
                            style: TextStyle(
                              color: InUseColors.componentsColor,
                            ),
                          ),
                          trailing: Image.asset(
                            Assets.school,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: SizedBox(
              height: 8.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavBarItem(
                    title: "الخدمات",
                    icon: Icons.dashboard,
                    heroTag: "service_1",
                    onPressed: () {},
                  ),
                  NavBarItem(
                    title: "الخدمات",
                    icon: Icons.dashboard,
                    heroTag: "service_2",
                    onPressed: () {},
                  ),
                  NavBarItem(
                    title: "الخدمات",
                    icon: Icons.dashboard,
                    heroTag: "service_3",
                    onPressed: () {},
                  ),
                  NavBarItem(
                    title: "الرئيسية",
                    icon: CupertinoIcons.home,
                    heroTag: "home_button",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
