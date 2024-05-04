import 'dart:math';
import 'package:flutter/material.dart';
import 'export.dart';

class PatternButtons2 extends StatelessWidget {
  const PatternButtons2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NumCircle(num: 12, radius: 44),
        Row(
          children: [
            Transform.rotate(
              angle: pi / 2,
              child: SizedBox(
                width: 30,
                child: Image.asset('assets/images/yellow_arrow.png'),
              ),
            ),
            const NumCircle(num: 12, radius: 28),
            const SizedBox(width: 30),
          ],
        ),
        const NumCircle(num: 11, radius: 44),
        Row(
          children: [
            const SizedBox(width: 30),
            const NumCircle(num: 11, radius: 28),
            Transform.rotate(
              angle: pi / 2,
              child: SizedBox(
                width: 30,
                child: Image.asset('assets/images/red_arrow.png'),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const NumCircle(num: 10, radius: 44),
            Column(
              children: [
                const SizedBox(height: 16),
                const NumCircle(num: 10, radius: 28),
                Transform.rotate(
                  angle: 0,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/yellow_arrow.png'),
                  ),
                ),
              ],
            ),
            const NumCircle(num: 9, radius: 44),
            Column(
              children: [
                Transform.rotate(
                  angle: 0,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/red_arrow.png'),
                  ),
                ),
                const NumCircle(num: 9, radius: 28),
                const SizedBox(height: 16),
              ],
            ),
            const StartingPoint(),
            Column(
              children: [
                const SizedBox(height: 16),
                const NumCircle(num: 13, radius: 28),
                Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/red_arrow.png'),
                  ),
                ),
              ],
            ),
            const NumCircle(num: 13, radius: 44),
            Column(
              children: [
                Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/yellow_arrow.png'),
                  ),
                ),
                const NumCircle(num: 14, radius: 28),
                const SizedBox(height: 16),
              ],
            ),
            const NumCircle(num: 14, radius: 44),
          ],
        ),
        Row(
          children: [
            const SizedBox(width: 30),
            const NumCircle(num: 8, radius: 28),
            Transform.rotate(
              angle: -pi / 2,
              child: SizedBox(
                width: 30,
                child: Image.asset('assets/images/yellow_arrow.png'),
              ),
            ),
          ],
        ),
        const NumCircle(num: 8, radius: 44),
      ],
    );
  }
}
