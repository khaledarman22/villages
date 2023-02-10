import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:villages/model/teacher.dart';

import '../../../assets/assets.dart';
import '../../../assets/colors.dart';

class TeacherSchoolCard extends StatelessWidget {
  const TeacherSchoolCard({Key? key, this.teacher}) : super(key: key);
  final TeacherModel? teacher;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      margin: const EdgeInsets.all(
        20,
      ),
      padding: const EdgeInsets.all(
        5,
      ),
      decoration: BoxDecoration(
        color: InUseColors.appBarColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "أ/${teacher!.name}",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: InUseColors.componentsColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "المادة العلمية:${teacher!.subject}",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: InUseColors.componentsColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "المرحلة:${teacher!.educationalLevel}",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: InUseColors.componentsColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "${teacher!.rating}",
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: InUseColors.componentsColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ],
                )
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage(
                  teacher!.gander == 0
                      ? Assets.teacherMan
                      : Assets.teacherWoman,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
