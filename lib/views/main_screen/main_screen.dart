import 'package:do_it_right/views/login_screen/utils/export.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../helper.dart';
import '../pattern_screen/patterns_screen.dart';
import 'utils/export.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    Size size = mediaQuery.size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: SafeArea(
                child: Container(
                  height: height - 16,
                  width: width - 32,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          BottomBar(width: width, mediaQuery: mediaQuery),
          Column(
            children: [
              Container(
                height: height * .3,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/main_background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SafeArea(
                  child: Image.asset('assets/images/logotaek.png'),
                ),
              ),
              Container(
                height: 10,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  border: Border(
                    top: BorderSide(color: Colors.black),
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              Container(
                height: height * .7 - 30,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Immerse yourself in the art of accurate pattern execution—because every detail matters on your path to excellence.',
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Let\'s elevate your practice together!',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    FilledContainerWidget(
                      text: 'Grading Syllabus',
                      fontSize: 16,
                      width: 200,
                      verticalPadding: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        PatternsButton(
                          width: width,
                          subtext: '8 camera view',
                        ),
                        const Spacer(),
                        PatternsButton(
                          width: width,
                          subtext: 'Statics',
                        ),
                      ],
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: height * .06,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: MAINMENU.length,
                      itemBuilder: (ctx, i) => InkWell(
                        onTap: () => MAINMENUONTAP[i](context),
                        child: Container(
                          decoration: BoxDecoration(
                            color: i == 1 || i == 2 || i == 5 || i == 6
                                ? const Color(0xff94A9BE)
                                : const Color(0xff55B0FC),
                            border: Border.all(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            MAINMENU[i].toUpperCase(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.padding.bottom,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(bottom: 8.0),
                    //   child: Text(
                    //     'Grading syllabus'.toUpperCase(),
                    //     style: const TextStyle(
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 16,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        color: Colors.black,
                      )
                    ],
                  ),
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PatternsButton extends StatelessWidget {
  const PatternsButton({
    super.key,
    required this.width,
    required this.subtext,
  });

  final double width;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        next(context, PatternsScreen());
      },
      child: Container(
        width: (width - 64 - 16) / 2,
        decoration: BoxDecoration(
          color: const Color(0xff2491FE),
          borderRadius: BorderRadius.circular(36),
          border: Border.all(color: Colors.white),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              'Patterns'.toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20,
                  ),
            ),
            Text(
              subtext.toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 11,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
