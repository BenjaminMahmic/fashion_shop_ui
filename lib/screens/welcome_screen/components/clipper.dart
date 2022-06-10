import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()..moveTo(0, 0);

    path.lineTo(0, size.height * .7);
    path.quadraticBezierTo(0, size.height * .82, 40, size.height * .85);

    path.lineTo(size.width - 50, size.height - 10);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height * 0.90);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
