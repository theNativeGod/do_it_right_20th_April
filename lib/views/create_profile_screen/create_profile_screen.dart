import 'package:do_it_right/views/login_screen/utils/body_area.dart';
import 'package:do_it_right/views/login_screen/utils/export.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'utils/export.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    double height = size.height;
    double width = size.width;
    EdgeInsets sysPadding = mediaQuery.padding;
    double bottomBarHeight = mediaQuery.padding.bottom + 44;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Center(
        child: Stack(
          children: [
            BodyArea(height: height, width: width),
            Positioned(
              left: 0,
              right: 0,
              top: mediaQuery.padding.top + height * .15 + 16,
              child: Container(
                height: 20,
                width: width,
                color: const Color(0xfffff200),
              ),
            ),
            SafeArea(
              child: Container(
                height: height,
                width: width,
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
                      children: [
                        ProfilePic(height: height),
                        Bio(height: height),
                      ],
                    ),
                    SizedBox(
                      height: height * .042,
                    ),
                    RegistrationForm(height: height, width: width),
                    const Spacer(),
                    const SubscriptionButon(),
                    SizedBox(
                      height: bottomBarHeight,
                    ),
                  ],
                ),
              ),
            ),
            BottomBar(
              width: width,
              mediaQuery: mediaQuery,
              privateButton: true,
            ),
          ],
        ),
      )),
    );
  }
}
