import 'package:do_it_right/view_models/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../create_profile_screen/utils/export.dart';
import '../fighter_profile_screen.dart/fighter_profile_screen.dart';
import '../fighter_profile_screen.dart/utils/export.dart';
import '../fighter_profile_screen.dart/utils/gradings_bottom_sheet.dart';
import '../fighter_profile_screen.dart/utils/social_bottomsheet.dart';
import '../login_screen/utils/export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    double height = size.height;
    double width = size.width;
    EdgeInsets sysPadding = mediaQuery.padding;
    double bottomBarHeight = mediaQuery.padding.bottom + 44;
    double topBarHeight = 40;
    var pageProvider = Provider.of<ProfileProvider>(context);
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          BodyArea(
            height: height,
            width: width,
            isTopBar: true,
          ),
          YellowRibbon(
              mediaQuery: mediaQuery,
              height: height,
              topBarHeight: topBarHeight,
              width: width),
          Positioned(
            top: 40,
            child: SafeArea(
              child: Container(
                height: height,
                width: width - 32,
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProfilePic(height: height),
                        Flexible(
                          flex: 8,
                          child: ClipRRect(
                            child: Container(
                              height: height * .14,
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name Surname'.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'BIO: jdkfjslf jfkdj fjfksd j dfdklfds fk df ldk jkl jdlkk kj',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .042,
                    ),
                    Expanded(
                      child: getBottomSheet(pageProvider.bottomSheetIndex),
                    ),
                    SizedBox(
                      height: bottomBarHeight,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomBar(
            width: width,
            mediaQuery: mediaQuery,
            privateButton: true,
            isProfile: true,
          ),
        ],
      ),
    ));
  }

  getBottomSheet(index) {
    switch (index) {
      case 0:
        return BottomSheetMenu();
      case 1:
        return TournamentBottomSheet();
      case 2:
        return SparringBottomSheet();
      case 3:
        return GradingsBottomSheet();
      case 4:
        return SocialBottomSheet();
      case 5:
        return SeminarsBottomSheet();
      default:
        return BottomSheetMenu();
    }
  }
}

class YellowRibbon extends StatelessWidget {
  const YellowRibbon({
    super.key,
    required this.mediaQuery,
    required this.height,
    required this.topBarHeight,
    required this.width,
  });

  final MediaQueryData mediaQuery;
  final double height;
  final double topBarHeight;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: mediaQuery.padding.top + height * .15 + 20 + topBarHeight,
      child: Container(
        height: 20,
        width: width,
        color: const Color(0xfffff200),
        padding: const EdgeInsets.only(right: 32),
        alignment: Alignment.centerRight,
        child: Text('Black Belt'.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall),
      ),
    );
  }
}
