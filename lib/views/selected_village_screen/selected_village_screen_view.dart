import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/controller/selected_village_screen/selected_village_screen_controller.dart';
import 'package:villages/extension/context_extension.dart';
import 'package:villages/router/router.dart';
import 'package:villages/views/selected_village_screen/components/village_service_card_widget.dart';

import '../../assets/assets.dart';

class SelectedVillageScreen extends StatelessWidget {
  const SelectedVillageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var name = context.args['village_name'];

    return ChangeNotifierProvider<SelectedVillageScreenController>(
      create: (_) => SelectedVillageScreenController(),
      child: Consumer<SelectedVillageScreenController>(
          builder: (context, ctrl, _) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              name ?? '',
              style: TextStyle(
                color: InUseColors.componentsColor,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView(
              children: [
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
                    //  controller: scrollController,
                    // crossAxisCount: 2,
                    childrenDelegate: SliverChildListDelegate.fixed(
                      [
                        VillageServiceCardWidget(
                          imageUrl: Assets.school,
                          serviceName: 'الخدمات التعليمية',
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRouter.educationalServicesScreen.name!,
                            );
                          },
                        ),
                        VillageServiceCardWidget(
                          imageUrl: Assets.socialServices,
                          serviceName: 'الخدمات الإجتماعية',
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRouter.socialServicesScreen.name!,
                            );
                          },
                        ),
                        VillageServiceCardWidget(
                          imageUrl: Assets.bonesDoctor,
                          serviceName: 'الخدمات الصحية',
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRouter.medicalServicesScreen.name!,
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
          ),
        );
      }),
    );
  }
}
