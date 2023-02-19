import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../assets/assets.dart';
import '../../shared/data/supermarkets.dart';
import '../../shared/views/layouts/super_market/super_market_page.dart';
import 'components/sport_club_card_widget.dart';
// import model

class SportClubPage extends StatelessWidget {
  const SportClubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'النادي الرياضى',
        ),
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
                SportClubCardWidget(
                  imageUrl: Assets.playingPing,
                  serviceTitle: 'تنس طاولة',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                SportClubCardWidget(
                  imageUrl: Assets.bingoPlayer,
                  serviceTitle: 'بلياردو',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                SportClubCardWidget(
                  imageUrl: Assets.playingFootball,
                  serviceTitle: "كرة القدم",
                  serviceSubTitle: '',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => SuperMarketPage(
                          supermarket: SupermarketsData.i.supermarkets,
                        ),
                      ),
                    );
                  },
                ),
                SportClubCardWidget(
                  imageUrl: Assets.gym,
                  serviceTitle: "رفع الاثقال",
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                SportClubCardWidget(
                  imageUrl: Assets.cyberPlayer,
                  serviceTitle: 'العاب الالكترونية',
                  serviceSubTitle: '',
                  onTap: () {},
                ),
                SportClubCardWidget(
                  imageUrl: Assets.playingChess,
                  serviceTitle: 'شطرنج',
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
      ),
    );
  }
}
