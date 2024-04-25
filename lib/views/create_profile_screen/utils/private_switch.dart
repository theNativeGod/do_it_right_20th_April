import 'package:flutter/material.dart';

class PrivateSwitch extends StatefulWidget {
  const PrivateSwitch({
    super.key,
  });

  @override
  State<PrivateSwitch> createState() => _PrivateSwitchState();
}

class _PrivateSwitchState extends State<PrivateSwitch> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .7,
      child: Switch(
        value: isOn,
        onChanged: (value) {
          setState(() {
            isOn = value;
          });
        },
        activeColor: const Color(0xff98ccfd),
        thumbColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return Colors.white.withOpacity(.48);
          }
          return Colors.white;
        }),
      ),
    );
  }
}
