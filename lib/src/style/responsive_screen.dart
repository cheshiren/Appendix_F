// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// import 'package:Appendix_F/src/texts/translations.dart';
import 'package:flutter/material.dart';
// import 'package:sized_context/sized_context.dart';

/// A widget that makes it easy to create a screen with a square-ish
/// main area, a smaller menu area, and a small area for a message on top.
/// It works in both orientations on mobile- and tablet-sized screens.
class ResponsiveScreen extends StatelessWidget {
  /// This is the "hero" of the screen. It's more or less square, and will
  /// be placed in the visual "center" of the screen.
  final Widget squarishMainArea;

  /// The second-largest area after [squarishMainArea]. It can be narrow
  /// or wide.
  final Widget rectangularMenuArea;

  /// An area reserved for some static text close to the top of the screen.
  final Widget topMessageArea;

  /// How much bigger should the [squarishMainArea] be compared to the other
  /// elements.
  final double mainAreaProminence;

  const ResponsiveScreen({
    required this.squarishMainArea,
    required this.rectangularMenuArea,
    this.topMessageArea = const SizedBox.shrink(),
    this.mainAreaProminence = 0.8,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // This widget wants to fill the whole screen.
        final size = constraints.biggest;
        final padding = EdgeInsets.all(size.shortestSide / 30);

        if (size.height >= size.width) {
          // "Portrait" / "mobile" mode.
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SafeArea(
                bottom: false,
                child: Padding(
                  padding: padding,
                  child: topMessageArea,
                ),
              ),
              Expanded(
                flex: (mainAreaProminence * 100).round(),
                child: SafeArea(
                  top: false,
                  bottom: false,
                  minimum: padding,
                  child: squarishMainArea,
                ),
              ),
              SafeArea(
                top: false,
                maintainBottomViewPadding: true,
                child: Padding(
                  padding: padding,
                  child: rectangularMenuArea,
                ),
              ),
            ],
          );
        } else {
          // "Landscape" / "tablet" mode.
          final isLarge = size.width > 900;

          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: isLarge ? 7 : 5,
                child: SafeArea(
                  right: false,
                  maintainBottomViewPadding: true,
                  minimum: padding,
                  child: squarishMainArea,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    SafeArea(
                      bottom: false,
                      left: false,
                      maintainBottomViewPadding: true,
                      child: Padding(
                        padding: padding,
                        child: topMessageArea,
                      ),
                    ),
                    Expanded(
                      child: SafeArea(
                        top: false,
                        left: false,
                        maintainBottomViewPadding: true,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: padding,
                            child: rectangularMenuArea,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

// stackoverflow code
// https://stackoverflow.com/a/71645130/12785478

final window = WidgetsBinding.instance.window;
Size size = window.physicalSize / window.devicePixelRatio;
num padding = 8.0;

/// This method is used to set padding/margin (for the left and Right side)
/// and width of the screen or widget according to the Viewport width.
double getHorizontalSize(double px) {
  num screenWidth = size.width - padding * 2;
  return px * (screenWidth / (1024 / 8));
}

/// This method is used to set padding/margin (for the top and bottom side)
/// and height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  // num statusBar = MediaQueryData.fromWindow(window).viewPadding.top;
  num statusBar = 0;
  num screenHeight = size.height - statusBar - padding * 2;
  return px * (screenHeight / (1360 / 8));
}

/// This method is used to set smallest px in image height and width.
double getSize(double px) {
  final height = getVerticalSize(px);
  final width = getHorizontalSize(px);

  if (height < width) {
    return height; //.toInt().toDouble();
  } else {
    return width; //.toInt().toDouble();
  }
}

/// This method is used to set text font size according to Viewport.
double getFontSize(double px) {
  // final double fontSize = (px * pt * 1.226 / 8).floor() * 8;
  final double fontSize = (px * pt); //.toInt().toDouble();
  // final fontSize = getSize(px);
  return fontSize;
}

double pt = getSize(1); // size of local point (default is 8)

double f96 = 12 * pt; // 96px
double f72 = 9 * pt; //  72px
double f64 = 8 * pt; //  64px
double f48 = 6 * pt; //  48px
double f40 = 5 * pt; //  40px
double f32 = 4 * pt; //  32px
double f24 = 3 * pt; //  24px
double f16 = 2 * pt; //  16px
double W = getSize(128);
double H = getSize(170);
double ppi = 0;
double f12pt = 0;
// double f10pt = 0;
// double f8pt = 0;
double fDesc = 0;
double descMaxWidth = 0;
bool isMobile = false;
double padDesc = 8 * pt;

void calculateSizes(Size physSize, double physDiagonal) {
  size = window.physicalSize / window.devicePixelRatio;
  pt = getSize(1); // size of local point (default is 8)
  f96 = 12 * pt; // 96px
  f72 = 9 * pt; //  72px
  f64 = 8 * pt; //  64px
  f48 = 6 * pt; //  48px
  f40 = 5 * pt; //  40px
  f32 = 4 * pt; //  32px
  f24 = 3 * pt; //  24px
  f16 = 2 * pt; //  16px
  W = getSize(128);
  H = getSize(170);
  print(window.physicalSize);
  print(physSize);
  ppi = size.height / physSize.height;
  f12pt = ppi / 6;
  // f10pt = ppi / 7.2;
  // f8pt = ppi / 9;
  // isMobile = physDiagonal <= 7;
  isMobile = size.width <= 600;
  padDesc = isMobile ? 4 * pt : 8 * pt;
  fDesc = f12pt;
  if (size.width < 24 * fDesc) fDesc = size.width / 24;
  // fDesc = fDesc.toInt().toDouble();
  descMaxWidth = 34 * fDesc;
  print(ppi);
  print(fDesc);
}
