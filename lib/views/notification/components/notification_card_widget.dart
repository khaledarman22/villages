import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    Key? key,
    this.title,
    this.dateTime,
    this.failureMSG,
    this.isFailure,
    this.onSubmit,
  }) : super(key: key);
  final String? title;

  final DateTime? dateTime;
  final String? failureMSG;
  final bool? isFailure;
  final void Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    String timeFormated = intl.DateFormat(
      'd / M / yyyy    h  :  m',
    ).format(
      dateTime ?? DateTime.now(),
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            tileColor: InUseColors.appBarColor,
            title: Text(
              title ?? 'notification erorr',
              style: const TextStyle(
                color: InUseColors.componentsColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              timeFormated,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: InUseColors.submitIconColor,
              ),
              child: const Text('جديد'),
            ),
            leading: Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Image.asset(
                !isFailure! ? Assets.doneOperation : Assets.cancelOperation,
              ),
            ),
            contentPadding: const EdgeInsets.all(
              15,
            ),
            isThreeLine: true,
          ),
        ),
        Visibility(
          visible: isFailure!,
          child: Container(
            color: InUseColors.appBarColor,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 8.h,
            width: double.infinity,
            child: Center(
              child: Text(
                failureMSG!,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
