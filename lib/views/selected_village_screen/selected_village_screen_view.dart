import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/controller/selected_village_screen/selected_village_screen_controller.dart';
import 'package:villages/extension/context_extension.dart';
import 'package:villages/router/router.dart';
import 'package:villages/views/selected_village_screen/components/village_info_widget.dart';
import 'package:villages/views/selected_village_screen/components/village_service_card_widget.dart';

import '../../assets/assets.dart';

class SelectedVillageScreen extends StatelessWidget {
  const SelectedVillageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var name = context.args['village_name'];
    var listVillages = const [
      SelectedVillageInfoWidget(
        imageURl: Assets.villagePreview,
        villageName: 'قرية رأس الخليج البلد',
        villageShortInfo:
            'هى إحدى القرى التابعة لمركز شربين محافظة الدقهلية وتعد من أكبر القرى داخل مركز شربين.',
      ),
      SelectedVillageInfoWidget(
        imageURl: Assets.villagePreview,
        villageName: 'قرية رأس الخليج البلد',
        villageShortInfo:
            'تبلغ المساحة التي تعيش عليها الكتلة السكانية الحالية تقريبا ما يعادل 400 فدان تتركز في وسط المساحات الزراعية وتبقى مساحة 3000 فدان كمساحة مزروعة منقسمة',
      ),
    ];
    return ChangeNotifierProvider<SelectedVillageScreenController>(
      create: (_) => SelectedVillageScreenController(),
      child: Consumer<SelectedVillageScreenController>(
          builder: (context, ctrl, _) {
        var scrollController = ScrollController();
        scrollController.addListener(() {
          print(scrollController.offset);
        });
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                name ?? '',
                style: TextStyle(
                  color: InUseColors.componentsColor,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            body: ListView(
              children: [
                CarouselSlider(
                  items: listVillages,
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 7),
                    height: context.isPortrait ? 27.h : 52.h,
                    viewportFraction: context.isPortrait ? 0.99 : 0.55,

                    //aspectRatio: 1.8,
                    enableInfiniteScroll: true,
                    onPageChanged: ((index, _) {
                      ctrl.changeImage(index);
                    }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        color:
                            ctrl.imageIndex == 0 ? Colors.green : Colors.grey,
                        height: 15,
                        width: 15,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    ClipOval(
                      child: Container(
                        color:
                            ctrl.imageIndex == 1 ? Colors.green : Colors.grey,
                        height: 15,
                        width: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'الخدمات المتاحة داخل القرية ',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: InUseColors.componentsColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: InUseColors.componentsColor,
                  endIndent: context.isPortrait ? 35.w : 65.w,
                  thickness: 2,
                ),
                SizedBox(
                  height: context.isPortrait ? 60.h : 60.h,
                  child: GridView.custom(
                    //  physics: const NeverScrollableScrollPhysics(),
                    controller: scrollController,
                    // crossAxisCount: 2,
                    childrenDelegate: SliverChildListDelegate.fixed(
                      [
                        VillageServiceCardWidget(
                          imageUrl: Assets.hospital,
                          serviceName: 'الخدمات الصحية',
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRouter.medicalServicesScreen.name!,
                            );
                          },
                        ),
                        VillageServiceCardWidget(
                          imageUrl: Assets.teachChild,
                          serviceName: 'الخدمات التعليمية',
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRouter.educationalServicesScreen.name!,
                            );
                          },
                        ),
                        VillageServiceCardWidget(
                          imageUrl: Assets.worker,
                          serviceName: 'الخدمات الإجتماعية',
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRouter.socialServicesScreen.name!,
                            );
                          },
                        ),
                      ],
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: context.isPortrait ? 1 : 1.5,
                      crossAxisCount: context.isPortrait ? 2 : 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  ),
                )
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.startFloat,
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
      }),
    );
  }
}
