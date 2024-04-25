import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      margin: const EdgeInsets.only(right: 8),
      child: Image.asset('assets/images/$image.png'),
    );
  }
}
