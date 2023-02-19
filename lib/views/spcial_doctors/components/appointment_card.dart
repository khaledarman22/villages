import 'package:flutter/material.dart';

import '../../../shared/views/components/painter_shape.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    Key? key,
    this.day,
    this.from,
    this.to,
    this.isActive = true,
    this.size = const Size(
      150,
      100,
    ),
  }) : super(key: key);
  final String? day;

  final Size? size;
  final String? from;
  final String? to;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size!.height,
      width: size!.width,
      child: Stack(
        children: [
          SizedBox(
            height: size!.height,
            width: size!.width,
            child: isActive!
                ? CustomPaint(
                    painter: MyPainter(),
                  )
                : ColorFiltered(
                    colorFilter: const ColorFilter.linearToSrgbGamma(),
                    child: CustomPaint(
                      painter: MyPainter(),
                    ),
                  ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              day!,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              isActive! ? 'من\n $from \nحتي\n $to' : 'لايوجد\nمواعيد الان',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.w900,
                fontSize: 12,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              isActive! ? 'متاح' : 'غير متاح',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
