import 'package:do_it_right/view_models/create_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../create_profile_screen/utils/export.dart';
import '../../helper.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.width,
    required this.mediaQuery,
    this.privateButton = false,
  });

  final double width;
  final MediaQueryData mediaQuery;
  final bool privateButton;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  width: width,
                  height: mediaQuery.padding.bottom + 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bottomBar.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: const AlignmentDirectional(0.03, 0),
                  padding: const EdgeInsets.only(top: 36),
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                privateButton
                    ? Container(
                        width: width,
                        height: mediaQuery.padding.bottom + 4,
                        color: Colors.white,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          privateButton
              ? Positioned(
                  bottom: mediaQuery.padding.bottom,
                  right: 8,
                  child: Row(
                    children: [
                      Text(
                        'Private'.toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(width: 4),
                      const PrivateSwitch(),
                    ],
                  ),
                )
              : const SizedBox.shrink(),
          privateButton
              ? Positioned(
                  left: 16,
                  bottom: mediaQuery.padding.bottom + 34,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Provider.of<CreateProfileProvider>(context,
                                listen: false)
                            .clearFighter();
                        pop(context);
                      },
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xff2491fe),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
