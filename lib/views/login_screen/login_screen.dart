import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'utils/export.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    double height = size.height;
    double width = size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xffcceffc),
        body: Center(
          child: Stack(
            children: [
              BodyArea(height: height, width: width),
              Column(
                children: [
                  SizedBox(
                    height: height * .3,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(
                                  'assets/images/login_hero.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.grey.shade100,
                                BlendMode.saturation,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(.4),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SafeArea(
                                  child: Image.asset('assets/images/logo.png')),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 10,
                            width: width,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height * .7,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UserInputFields(height: height),
                        Buttons(height: height),
                        const DisplayText(),
                        SizedBox(
                          height: (mediaQuery.padding.bottom + 90) / 8,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // Positioned(
              //   top: 0,
              //   left: 0,
              //   right: 0,
              //   child: Center(
              //     child: SafeArea(
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 8.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Icon(
              //               Icons.home,
              //               color: Colors.white,
              //               size: 30,
              //             ),
              //             Icon(
              //               Icons.menu,
              //               color: Colors.white,
              //               size: 30,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              BottomBar(width: width, mediaQuery: mediaQuery),
            ],
          ),
        ),
      ),
    );
  }
}

