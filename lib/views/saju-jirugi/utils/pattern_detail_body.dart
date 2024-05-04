import 'package:do_it_right/view_models/saju-jirugi_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'export.dart';

class PatternDetailBody extends StatefulWidget {
  const PatternDetailBody({
    super.key,
    required this.paddingTop,
    required this.height,
    required this.paddingBottom,
    required this.bottomBarHeight,
    required this.width,
    required this.mediaQuery,
  });

  final double paddingTop;
  final double height;
  final double paddingBottom;
  final double bottomBarHeight;
  final double width;
  final MediaQueryData mediaQuery;

  @override
  State<PatternDetailBody> createState() => _PatternDetailBodyState();
}

class _PatternDetailBodyState extends State<PatternDetailBody> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.paddingTop + 40,
      left: 0,
      right: 0,
      child: Container(
        height: widget.height -
            widget.paddingTop -
            widget.paddingBottom -
            40 -
            widget.bottomBarHeight,
        // width: width - 32,
        // margin: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          const SizedBox(
                            height: 80,
                            width: 80,
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: Center(
                              child: Container(
                                width: 80,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Container(
                                width: 10,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  border: Border.all(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 80,
                        alignment: Alignment.center,
                        child: const NumCircle(
                          num: 14,
                          radius: 56,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: -3,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'Four Directional Punch',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:
                  TabBand(width: widget.width, mediaQuery: widget.mediaQuery),
            ),
            PatternButtonsArea(widget: widget),
          ],
        ),
      ),
    );
  }
}

class PatternButtonsArea extends StatelessWidget {
  const PatternButtonsArea({
    super.key,
    required this.widget,
  });

  final PatternDetailBody widget;

  @override
  Widget build(BuildContext context) {
    var pageProvider = Provider.of<SajuJirugiProvider>(context);
    int index = pageProvider.index;
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/360.png'),
          ),
        ),
        padding: const EdgeInsets.all(36.0),
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              index == 0 ? PatternButtons1() : PatternButtons2(),
              SizedBox(
                height: widget.height * .005,
              ),
              const Legend(),
              SizedBox(
                height: widget.height * .04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
