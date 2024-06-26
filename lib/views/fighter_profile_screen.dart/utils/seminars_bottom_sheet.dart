
import 'package:flutter/material.dart';

import 'export.dart';
import 'social_card.dart';

class SeminarsBottomSheet extends StatelessWidget {
  const SeminarsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 16),
        Text(
          'Seminars'.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: const Color(0xff184FA2),
            fontWeight: FontWeight.bold,
            shadows: [
              const BoxShadow(
                color: Colors.white,
                blurRadius: 4,
                spreadRadius: 5,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SocialCard(text: 'Training'),
            SocialCard(text: 'Medals awards'),
            SocialCard(text: '10th Gup to 9th Gup'),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: (width - 32 - 16 - 16 - 8) / 3,
              child: Image.asset(
                'assets/images/social.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: (width - 32 - 16 - 16 - 8) / 3,
              child: Image.asset(
                'assets/images/social.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: (width - 32 - 16 - 16 - 8) / 3,
              child: Image.asset(
                'assets/images/social.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
