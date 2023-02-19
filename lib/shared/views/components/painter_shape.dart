import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = const Color(
      0xffF4EFBE,
    );
    path = Path();
    path.lineTo(
      size.width * 0.01,
      size.height * 0.15,
    );
    path.cubicTo(
      size.width * 0.01,
      size.height * 0.07,
      size.width * 0.13,
      0,
      size.width * 0.28,
      0,
    );
    path.cubicTo(
      size.width * 0.28,
      0,
      size.width * 0.72,
      0,
      size.width * 0.72,
      0,
    );
    path.cubicTo(
      size.width * 0.87,
      0,
      size.width,
      size.height * 0.07,
      size.width,
      size.height * 0.15,
    );
    path.cubicTo(
      size.width,
      size.height * 0.15,
      size.width,
      size.height * 0.86,
      size.width,
      size.height * 0.86,
    );
    path.cubicTo(
      size.width,
      size.height * 0.94,
      size.width * 0.87,
      size.height,
      size.width * 0.72,
      size.height,
    );
    path.cubicTo(
      size.width * 0.72,
      size.height,
      size.width * 0.28,
      size.height,
      size.width * 0.28,
      size.height,
    );
    path.cubicTo(
      size.width * 0.13,
      size.height,
      size.width * 0.01,
      size.height * 0.94,
      size.width * 0.01,
      size.height * 0.86,
    );
    path.cubicTo(
      size.width * 0.01,
      size.height * 0.86,
      size.width * 0.01,
      size.height * 0.15,
      size.width * 0.01,
      size.height * 0.15,
    );
    path.cubicTo(
      size.width * 0.01,
      size.height * 0.15,
      size.width * 0.01,
      size.height * 0.15,
      size.width * 0.01,
      size.height * 0.15,
    );
    canvas.drawPath(
      path,
      paint,
    );

    // Path number 2

    paint.color = const Color(
      0xff4A85B0,
    );
    path = Path();
    path.lineTo(
      0,
      size.height * 0.15,
    );
    path.cubicTo(
      0,
      size.height * 0.07,
      size.width * 0.12,
      0,
      size.width * 0.28,
      0,
    );
    path.cubicTo(
      size.width * 0.28,
      0,
      size.width * 0.72,
      0,
      size.width * 0.72,
      0,
    );
    path.cubicTo(
      size.width * 0.88,
      0,
      size.width,
      size.height * 0.07,
      size.width,
      size.height * 0.15,
    );
    path.cubicTo(
      size.width,
      size.height * 0.15,
      size.width,
      size.height / 5,
      size.width,
      size.height / 5,
    );
    path.cubicTo(
      size.width,
      size.height / 5,
      0,
      size.height / 5,
      0,
      size.height / 5,
    );
    path.cubicTo(
      0,
      size.height / 5,
      0,
      size.height * 0.15,
      0,
      size.height * 0.15,
    );
    path.cubicTo(
      0,
      size.height * 0.15,
      0,
      size.height * 0.15,
      0,
      size.height * 0.15,
    );
    canvas.drawPath(
      path,
      paint,
    );

    // Path number 3

    paint.color = const Color(0xffDF2323);
    path = Path();
    path.lineTo(
      0,
      size.height * 0.81,
    );
    path.cubicTo(
      0,
      size.height * 0.81,
      size.width,
      size.height * 0.81,
      size.width,
      size.height * 0.81,
    );
    path.cubicTo(
      size.width,
      size.height * 0.81,
      size.width,
      size.height * 0.86,
      size.width,
      size.height * 0.86,
    );
    path.cubicTo(
      size.width,
      size.height * 0.94,
      size.width * 0.88,
      size.height,
      size.width * 0.72,
      size.height,
    );
    path.cubicTo(
      size.width * 0.72,
      size.height,
      size.width * 0.28,
      size.height,
      size.width * 0.28,
      size.height,
    );
    path.cubicTo(
      size.width * 0.12,
      size.height,
      0,
      size.height * 0.94,
      0,
      size.height * 0.86,
    );
    path.cubicTo(
      0,
      size.height * 0.86,
      0,
      size.height * 0.81,
      0,
      size.height * 0.81,
    );
    path.cubicTo(
      0,
      size.height * 0.81,
      0,
      size.height * 0.81,
      0,
      size.height * 0.81,
    );
    canvas.drawPath(
      path,
      paint,
    );
    path = Path();

    path.moveTo(0.4, size.height * 0.2);
    path.lineTo(size.width - 1, size.height * .2);

    path.lineTo(
      size.width - 1,
      size.height * .80,
    );

    path.lineTo(
      0.4,
      size.height * .80,
    );

    path.close();
    paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..color = Colors.green;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
