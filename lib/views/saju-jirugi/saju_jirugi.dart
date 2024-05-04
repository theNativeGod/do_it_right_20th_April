import 'package:flutter/material.dart';

import '../login_screen/utils/export.dart';
import 'utils/export.dart';

class SajuJirugi extends StatelessWidget {
  const SajuJirugi({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var size = mediaQuery.size;
    double width = size.width;
    double height = size.height;
    double paddingTop = mediaQuery.padding.top;
    double paddingBottom = mediaQuery.padding.bottom;
    double bottomBarHeight = paddingBottom + 40;
    return Scaffold(
      body: Stack(
        children: [
          BodyArea(
            height: height,
            width: width,
            isTopBar: true,
          ),
          PatternTitle(mediaQuery: mediaQuery, text: 'Saju-Jirugi'),
          PatternDetailBody(
              paddingTop: paddingTop,
              height: height,
              paddingBottom: paddingBottom,
              bottomBarHeight: bottomBarHeight,
              width: width,
              mediaQuery: mediaQuery),
          BottomBar(
            width: width,
            mediaQuery: mediaQuery,
            istutorial: true,
          ),
        ],
      ),
    );
  }
}
