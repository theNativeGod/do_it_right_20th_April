import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyArea extends StatelessWidget {
  const BodyArea({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Container(
          height: height,
          width: width - 32,
          decoration: BoxDecoration(
            color: const Color(0xffa3e2f9),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
