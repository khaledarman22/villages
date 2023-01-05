import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/assets/assets.dart';
import 'package:villages/assets/colors.dart';
// import model

class VillageReviewScreen extends StatelessWidget {
  const VillageReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox.shrink(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_forward,
              color: InUseColors.componentsColor,
              size: 22.sp,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'استعراض القري المتاحة',
          style: TextStyle(
            color: InUseColors.componentsColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 14.h,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              //SECTION -
              debugPrint('Print');
              showDialog(
                context: context,
                builder: ((context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 200,
                    ),
                    child: Material(
                      color: InUseColors.backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          35,
                        ),
                      ),
                      child: SizedBox(
                        child: Column(
                          children: [
                            Text(
                              'هذه الميزة قيد التطوير',
                              style: TextStyle(
                                color: InUseColors.componentsColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                            Image.asset(
                              Assets.appTesting,
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              );
            },
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: InUseColors.componentsColor,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'قرية رأس الخليج',
                style: TextStyle(
                  color: InUseColors.componentsColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5.sp,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey.shade400,
            indent: 20,
            endIndent: 20,
          )
        ],
      ),
    );
  }
}
