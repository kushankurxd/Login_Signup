import 'package:flutter/material.dart';


class TopBar_signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 360.0,
      ),
      painter: Signuppainter(),
    );
  }
}

class Signuppainter extends CustomPainter{

  Color colorOne = Colors.orange[500];
  Color colorTwo = Colors.grey[800];
  Color colorThree = Colors.blue[400];

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();


    path.lineTo(size.width * 0.4, 0);
    path.quadraticBezierTo(size.width * 0.50, size.height * 1.4, size.width * 1.44, size.height );
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorThree;
    canvas.drawPath(path, paint);



    path = Path();
    path.lineTo(0, size.height * 0.90);
    path.quadraticBezierTo(size.width *0.6, size.height * 1.34, size.width * 0.58, size.height * 0.74);
    path.quadraticBezierTo(size.width * 0.58, size.height * 0.4, size.width * 0.8, size.height * 0.3);
    path.quadraticBezierTo(size.width, size.height * 0.23, size.width,size.height * 0.14);
    path.lineTo(size.width,0);
    path.close();

    paint.color = colorTwo;
    canvas.drawPath(path, paint);




    path = Path();
    path.lineTo(0, size.height * 0.54);
    path.quadraticBezierTo(size.width *0.14, size.height * 0.54, size.width * 0.18, size.height * 0.4);
    path.quadraticBezierTo(size.width * 0.23, size.height * 0.24, size.width * 0.4, size.height * 0.19);
    path.quadraticBezierTo(size.width * 0.64, size.height * 0.11, size.width * 0.64,0);
    path.lineTo(size.width,0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}