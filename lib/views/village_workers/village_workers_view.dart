import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/shared/data/workers.dart';
import 'package:villages/shared/views/layouts/workers_preview/workers_preview_page.dart';

import '../../assets/assets.dart';
import '../social_services/components/social_service_card_widget.dart';

class VillageWorkersScreen extends StatelessWidget {
  const VillageWorkersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الحرف والعمال'),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.only(top: 1.h),
          child: GridView.custom(
            // crossAxisCount: 2,
            childrenDelegate: SliverChildListDelegate.fixed(
              [
                SocialServiceCardWidget(
                  imageUrl: Assets.elctWorker,
                  serviceTitle: 'كهربائي',
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => WorkersPreviewPage(
                          pageTitle: "كهربائي",
                          workers: WorkersData.instance.elcWorkers,
                        ),
                      ),
                    );
                  },
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.builderWorker,
                  serviceTitle: 'سباك',
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => WorkersPreviewPage(
                          pageTitle: "سباك",
                          workers: WorkersData.instance.plambers,
                        ),
                      ),
                    );
                  },
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.shop,
                  serviceTitle: "نجار",
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => WorkersPreviewPage(
                          pageTitle: "نجار",
                          workers: WorkersData.instance.carpenters,
                        ),
                      ),
                    );
                  },
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.transactions,
                  serviceTitle: 'مبلط',
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => WorkersPreviewPage(
                          pageTitle: "مبلط",
                          workers: WorkersData.instance.grounder,
                        ),
                      ),
                    );
                  },
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.playground,
                  serviceTitle: 'نقاش',
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => WorkersPreviewPage(
                          pageTitle: "نقاش",
                          workers: WorkersData.instance.painter,
                        ),
                      ),
                    );
                  },
                ),
                SocialServiceCardWidget(
                  imageUrl: Assets.transactions,
                  serviceTitle: 'سائق',
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => WorkersPreviewPage(
                          pageTitle: "سائق",
                          workers: WorkersData.instance.drivers,
                        ),
                      ),
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
}
