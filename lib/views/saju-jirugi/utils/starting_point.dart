import 'package:flutter/material.dart';

class StartingPoint extends StatelessWidget {
  const StartingPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.yellow,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2,
            )
          ]),
      margin: const EdgeInsets.all(8),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(4),
      child: FittedBox(
        child: Text(
          textAlign: TextAlign.center,
          'Starting\nPoint'.toUpperCase(),
          style: const TextStyle(fontSize: 8),
        ),
      ),
    );
  }
}
