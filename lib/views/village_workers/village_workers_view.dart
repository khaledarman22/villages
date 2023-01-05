import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:villages/views/village_workers/components/village_worker_card_widget.dart';

class VillageWorkersScreen extends StatelessWidget {
  const VillageWorkersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('عمال القرية'),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: VillageWorkerCardWidget(
                name: 'احمد محمود محمود',
                specialization: 'كهربائي',
                phoneNumber: '01018175987',
              ),
            );
          }),
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
