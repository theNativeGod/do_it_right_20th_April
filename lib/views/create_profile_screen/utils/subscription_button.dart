import 'package:flutter/material.dart';

import 'export.dart';

class SubscriptionButon extends StatelessWidget {
  const SubscriptionButon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xff2491fe),
            border: Border.all(color: Colors.white),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Subscription'.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Row(
          children: [
            Social(
              image: 'insta',
            ),
            Social(
              image: 'youtube',
            ),
            Social(
              image: 'whatsapp',
            ),
            Social(
              image: 'facebook',
            ),
            Social(
              image: 'twitter',
            ),
          ],
        )
      ],
    );
  }
}
