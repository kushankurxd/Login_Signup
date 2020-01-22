import 'package:flutter/material.dart';


class TopBar_login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(),
      painter: Loginpainter(),
    );
  }
}

class Loginpainter extends CustomPainter{

  Color colorTwo = Colors.grey[800];
  Color colorThree = Colors.blue[400];

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();


    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.48, size.height);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.88, size.width * 0.8, size.height * 0.8);
    path.quadraticBezierTo(size.width * 0.93, size.height * 0.76, size.width , size.height * 0.67);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);



    path = Path();
    path.lineTo(0, size.height * 0.62);
    path.quadraticBezierTo(size.width *0.16, size.height * 0.48, size.width * 0.47, size.height * 0.44);
    path.quadraticBezierTo(size.width * 0.78, size.height * 0.4, size.width, size.height * 0.22);
    path.lineTo(size.width,0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}