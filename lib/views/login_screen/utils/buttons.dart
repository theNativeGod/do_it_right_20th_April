import 'package:do_it_right/views/create_profile_screen/create_profile_screen.dart';
import 'package:do_it_right/views/helper.dart';
import 'package:flutter/material.dart';

import 'auth_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Forgot Password?',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: const Color(0xff00aeef),
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(
          height: 8 + height * .02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthButton(
              heading: 'Login',
              sub: 'Guest',
              onTap: () {},
            ),
            AuthButton(
              heading: 'Create',
              sub: 'Profile',
              onTap: () {
                next(context, const CreateProfileScreen());
              },
            ),
          ],
        ),
      ],
    );
  }
}
