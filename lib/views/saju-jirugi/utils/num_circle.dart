import 'package:flutter/material.dart';

class NumCircle extends StatelessWidget {
  const NumCircle({
    super.key,
    required this.num,
    required this.radius,
  });

  final int num;

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: radius == 56
            ? Colors.black
            : radius == 44
                ? const Color(0xff2491fe)
                : const Color(0xff626262),
        border: Border.all(
          color: radius == 44
              ? num % 2 != 0
                  ? Colors.white
                  : Colors.black
              : Colors.white,
          width: 2,
        ),
      ),
      margin: const EdgeInsets.all(4),
      alignment: Alignment.center,
      child: Text(
        num.toString(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: radius == 56
              ? 26
              : radius == 44
                  ? 24
                  : 16,
        ),
      ),
    );
  }
}

class NumCircleAlt extends StatelessWidget {
  const NumCircleAlt({
    super.key,
    required this.num,
    required this.radius,
  });

  final int num;

  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: radius == 56
            ? Colors.black
            : radius == 44
                ? const Color(0xff2491fe)
                : Colors.grey.shade600,
        border: Border.all(
          color: radius == 44
              ? num % 2 == 0
                  ? Colors.white
                  : Colors.black
              : Colors.white,
        ),
      ),
      margin: const EdgeInsets.all(4),
      alignment: Alignment.center,
      child: Text(
        num.toString(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontSize: radius == 56
              ? 26
              : radius == 44
                  ? 24
                  : 16,
        ),
      ),
    );
  }
}
