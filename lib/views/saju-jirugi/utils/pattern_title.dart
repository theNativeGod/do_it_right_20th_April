import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PatternTitle extends StatelessWidget {
  const PatternTitle({
    super.key,
    required this.mediaQuery,
    required this.text,
    this.isLarge = true,
  });

  final MediaQueryData mediaQuery;
  final bool isLarge;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: mediaQuery.padding.top + 17,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff2491fe),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.white),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: isLarge ? 16 : 20, vertical: isLarge ? 8 : 0),
          child: Text(
            text.toUpperCase(),
            style: isLarge
                ? Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                : Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
          ),
        ),
      ),
    );
  }
}
