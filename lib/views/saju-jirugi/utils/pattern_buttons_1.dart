import 'dart:math';

import 'package:flutter/material.dart';

import 'export.dart';

class PatternButtons1 extends StatelessWidget {
  const PatternButtons1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NumCircle(num: 5, radius: 44),
        Row(
          children: [
            const SizedBox(width: 30),
            const NumCircle(num: 5, radius: 28),
            Transform.rotate(
              angle: pi / 2,
              child: SizedBox(
                width: 30,
                child: Image.asset('assets/images/yellow_arrow.png'),
              ),
            ),
          ],
        ),
        const NumCircle(num: 4, radius: 44),
        Row(
          children: [
            Transform.rotate(
              angle: pi / 2,
              child: SizedBox(
                width: 30,
                child: Image.asset('assets/images/red_arrow.png'),
              ),
            ),
            const NumCircle(num: 4, radius: 28),
            const SizedBox(width: 30),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const NumCircle(num: 7, radius: 44),
            Column(
              children: [
                Transform.rotate(
                  angle: 0,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/yellow_arrow.png'),
                  ),
                ),
                const NumCircle(num: 7, radius: 28),
                const SizedBox(height: 16),
              ],
            ),
            const NumCircle(num: 6, radius: 44),
            Column(
              children: [
                const SizedBox(height: 16),
                const NumCircle(num: 6, radius: 28),
                Transform.rotate(
                  angle: 0,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/red_arrow.png'),
                  ),
                ),
              ],
            ),
            StartingPoint(),
            Column(
              children: [
                Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/red_arrow.png'),
                  ),
                ),
                const NumCircle(num: 2, radius: 28),
                const SizedBox(height: 16),
              ],
            ),
            const NumCircle(num: 2, radius: 44),
            Column(
              children: [
                const SizedBox(height: 16),
                const NumCircle(num: 3, radius: 28),
                Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    width: 30,
                    child: Image.asset('assets/images/yellow_arrow.png'),
                  ),
                ),
              ],
            ),
            const NumCircle(num: 3, radius: 44),
          ],
        ),
        Row(
          children: [
            Transform.rotate(
              angle: -pi / 2,
              child: SizedBox(
                width: 30,
                child: Image.asset('assets/images/yellow_arrow.png'),
              ),
            ),
            const NumCircle(num: 1, radius: 28),
            const SizedBox(width: 30),
          ],
        ),
        const NumCircle(num: 1, radius: 44),
      ],
    );
  }
}
