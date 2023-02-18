import 'package:flutter/material.dart';

import 'components/notification_card_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الإشعارات',
        ),
        centerTitle: true,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            NotificationCardWidget(
              isFailure: false,
              dateTime: DateTime.now(),
              title: 'الطلب تم بنجاج',
              onSubmit: () {},
              failureMSG: 'نأسف لحدوث ذلك، يرجي المحاولة في وقت لاحق',
            ),
            NotificationCardWidget(
              isFailure: true,
              dateTime: DateTime.now(),
              title: 'لم يتم طلبك بنجاح',
              onSubmit: () {},
              failureMSG: 'نأسف لحدوث ذلك، يرجي المحاولة في وقت لاحق',
            ),
          ],
        ),
      ),
    );
  }
}
