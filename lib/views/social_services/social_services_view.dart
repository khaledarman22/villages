import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/router/router.dart';

import '../../assets/assets.dart';
import 'components/social_service_card_widget.dart';

class SocialServicesScreen extends StatelessWidget {
  const SocialServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('الخدمات الإجتماعية'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: GridView.custom(
            // crossAxisCount: 2,
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                SocialServiceCardWidget(
                  imageUrl: Assets.adobeFactory,
                  serviceTitle: 'مصنع طوب أحمر',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.worker,
                  serviceTitle: 'عمال القرية',
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      AppRouter.villageWorkersScreen.name!,
                    );
                  },
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.shop,
                  serviceTitle: "المحلات",
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.transactions,
                  serviceTitle: 'وسائل التنقل',
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
