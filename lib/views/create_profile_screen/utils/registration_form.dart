import 'package:do_it_right/view_models/create_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'export.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height * .495,
      width: widget.width,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Text(
              'Information'.toUpperCase(),
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: const Color(0xff005fff),
                fontWeight: FontWeight.bold,
                shadows: [
                  const BoxShadow(
                    color: Colors.white,
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SignupInfo(
              width: widget.width,
              label: 'name surname',
            ),
            SignupInfo(
              width: widget.width,
              label: 'country',
            ),
            SignupInfo(
              width: widget.width,
              label: 'club dojang',
            ),
            SignupInfo(
              width: widget.width,
              label: 'instructor',
            ),
            SignupInfo(
              width: widget.width,
              label: 'affiliation',
            ),
            SignupInfo(
              width: widget.width,
              label: 'age',
            ),
            SignupInfo(
              width: widget.width,
              label: 'weight',
            ),
            SignupInfo(
              width: widget.width,
              label: 'height',
            ),
            SignupInfo(
              width: widget.width,
              label: 'belt',
            ),
          ],
        ),
      ),
    );
  }
}
