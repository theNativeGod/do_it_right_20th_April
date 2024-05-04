import 'package:do_it_right/view_models/saju-jirugi_provider.dart';
import 'package:do_it_right/views/main_screen/utils/filled_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'export.dart';

class TabBand extends StatelessWidget {
  const TabBand({
    super.key,
    required this.width,
    required this.mediaQuery,
  });

  final double width;
  final MediaQueryData mediaQuery;

  @override
  Widget build(BuildContext context) {
    var pageProvider = Provider.of<SajuJirugiProvider>(context, listen: false);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Right Side'.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                'Left Side'.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Container(
          width: width - 16,
          decoration: const BoxDecoration(
            color: Color(0xfffff200),
            border: Border.symmetric(
              horizontal: BorderSide(color: Colors.blueGrey, width: 2),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  pageProvider.index = 0;
                },
                child: FilledContainerWidget(
                  text: '1-7',
                  verticalPadding: 0,
                  horizontalPadding: 16,
                  fontSize: 18,
                ),
              ),
              InkWell(
                onTap: () {
                  pageProvider.index = 1;
                },
                child: FilledContainerWidget(
                  text: '8-14',
                  verticalPadding: 0,
                  horizontalPadding: 16,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
