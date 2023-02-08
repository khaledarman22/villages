import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';
import 'package:villages/model/supermarket.dart';

class SupermarketCard extends StatelessWidget {
  const SupermarketCard({Key? key, required this.markets}) : super(key: key);
  final SupermarketModel? markets;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24.h,
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: InUseColors.appBarColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            Assets.market,
            height: 12.h,
            fit: BoxFit.cover,
          ),
          Text(
            "اسم المحل/ ${markets!.name}",
            style: const TextStyle(
              color: InUseColors.componentsColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(
                Icons.location_on_rounded,
                color: InUseColors.componentsColor,
              ),
              Text(
                "الموقع :انقر هنا",
                style: TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                markets!.rate!.toInt().toString(),
                style: const TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              const Text(
                ":",
                style: TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "التقييم",
                style: TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
