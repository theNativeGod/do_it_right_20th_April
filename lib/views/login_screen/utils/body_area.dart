import 'package:do_it_right/views/helper.dart';
import 'package:do_it_right/views/main_screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyArea extends StatelessWidget {
  const BodyArea({
    super.key,
    required this.height,
    required this.width,
    this.isTopBar = false,
  });

  final double height;
  final double width;
  final bool isTopBar;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double paddingTop = mediaQuery.padding.top;
    double paddingBottom = mediaQuery.padding.bottom;
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            isTopBar
                ? Container(
                    height: 40,
                    width: width,
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            replace(context, const MainScreen());
                          },
                          child: const Icon(
                            Icons.home,
                            size: 30,
                            color: Color(0xff2491fe),
                          ),
                        ),
                        const Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  )
                : const SizedBox.shrink(),
            Container(
              height: height - paddingTop - paddingBottom - (isTopBar ? 40 : 0),
              width: width - 32,
              decoration: BoxDecoration(
                color: const Color(0xffa3e2f9),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
