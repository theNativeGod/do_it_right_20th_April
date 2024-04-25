import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 6,
      fit: FlexFit.tight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: height * .15,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: const LinearGradient(
                colors: [
                  Color(0xffd1e7ff),
                  Color(0xffa6cdfe),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            margin: const EdgeInsets.only(bottom: 20),
            alignment: Alignment.center,
            child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover),
          ),
          Positioned(
            left: -16,
            child: SizedBox(
              height: 20,
              child: Image.asset('assets/images/flag.png'),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset('assets/images/add.png')),
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffffa001),
                    Color(0xffff5401),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -32,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset('assets/images/belt.png')),
            ),
          ),
        ],
      ),
    );
  }
}
