import 'dart:math';

import 'package:flutter/material.dart';

class Legend extends StatelessWidget {
  const Legend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LegendRow(
              text: 'Walking Stance',
              borderColor: Colors.transparent,
            ),
            LegendRow(
              text: 'Low Block',
              borderColor: Colors.black,
            ),
            LegendRow(
              text: 'Front Punch',
              borderColor: Colors.white,
            ),
          ],
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            LegendRow(
              text: 'Inter-Half',
              borderColor: Colors.white,
              fillColor: Color.fromARGB(255, 112, 112, 112),
              isRight: true,
            ),
            LegendRow(
              text: 'Right',
              borderColor: Colors.black,
              isArrow: true,
              isRight: true,
            ),
            LegendRow(
              text: 'Left',
              borderColor: Colors.white,
              isRight: true,
              isArrow: true,
              arrowColor: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}

class LegendRow extends StatelessWidget {
  const LegendRow({
    super.key,
    required this.borderColor,
    this.fillColor = const Color(0xff2491fe),
    required this.text,
    this.isRight = false,
    this.isArrow = false,
    this.arrowColor = Colors.yellow,
  });

  final String text;
  final Color borderColor;
  final fillColor;
  final bool isRight;
  final bool isArrow;
  final Color arrowColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: !isRight
          ? Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: borderColor, width: 2),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall,
              )
            ])
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                isArrow
                    ? Transform.rotate(
                        angle: pi,
                        child: SizedBox(
                          width: 20,
                          child: Image.asset(
                              'assets/images/${arrowColor == Colors.red ? 'red_arrow' : 'yellow_arrow'}.png'),
                        ),
                      )
                    : Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          color: fillColor,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: borderColor, width: 2),
                        ),
                      ),
                const SizedBox(width: 8),
                Text(
                  text.toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ].reversed.toList(),
            ),
    );
  }
}
