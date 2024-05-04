import 'package:do_it_right/view_models/create_profile_provider.dart';
import 'package:do_it_right/view_models/profile_provider.dart';
import 'package:do_it_right/views/saju-jirugi/utils/pattern_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../create_profile_screen/utils/export.dart';
import '../helper.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required this.width,
    required this.mediaQuery,
    this.privateButton = false,
    this.istutorial = false,
    this.isProfile = false,
  });

  final double width;
  final MediaQueryData mediaQuery;
  final bool privateButton;
  final bool istutorial;
  final bool isProfile;

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
                      fit: BoxFit.fill,
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
                (privateButton || istutorial) && !isProfile
                    ? Container(
                        width: width,
                        height: mediaQuery.padding.bottom + 4,
                        color: Colors.white,
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
          istutorial
              ? Positioned(
                  bottom: mediaQuery.padding.bottom,
                  right: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff2491fe),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 4),
                          child: Text(
                            'Tutorial'.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        InkWell(
                          onTap: () {
                            pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff2491fe),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Text(
                              'Index'.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),
          privateButton && !isProfile
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
              ? !(isProfile &&
                      Provider.of<ProfileProvider>(context).bottomSheetIndex ==
                          0)
                  ? Positioned(
                      left: 16,
                      bottom: mediaQuery.padding.bottom + (!isProfile ? 34 : 0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            if (isProfile) {
                              Provider.of<ProfileProvider>(context,
                                      listen: false)
                                  .bottomSheetIndex = 0;
                            } else {
                              Provider.of<CreateProfileProvider>(context,
                                      listen: false)
                                  .clearFighter();
                              pop(context);
                            }
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
                  : const SizedBox.shrink()
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
