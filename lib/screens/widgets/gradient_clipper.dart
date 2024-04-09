import 'package:flutter/cupertino.dart';

class GradientClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height / 7);
    path.quadraticBezierTo(size.width / 2, size.height / -7, size.width, size.height / 7);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}