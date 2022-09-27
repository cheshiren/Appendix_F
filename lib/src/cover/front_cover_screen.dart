// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ui' as ui;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../audio/audio_controller.dart';
import '../audio/sounds.dart';
import '../settings/settings.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/typography.dart';
import '../style/Emblema_KGB_colored.dart';

class FrontCoverScreen extends StatelessWidget {
  const FrontCoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    final settingsController = context.watch<SettingsController>();
    final audioController = context.watch<AudioController>();

    // if (settingsController.musicOn.value) {
    // settingsController.toggleMusicOn();
    // }

    audioController.stopMusic();

    double pt = getSize(1); // size of local point (default is 8)

    var f96 = 12 * pt; // 96px
    var f48 = 6 * pt; //  48px
    var f40 = 5 * pt; //  40px
    var f24 = 3 * pt; //  24px
    var W = getSize(104);
    var H = getSize(148);

    final Widget svgEmblem = SvgPicture.string(
      rawSVG,
      height: 42 * pt,
      width: 22 * pt,
    );

    return Scaffold(
      backgroundColor: palette.tableColor,
      body: Center(
        child: Container(
          width: W,
          height: H,
          decoration: BoxDecoration(
            // color: palette.coverColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset.fromDirection(pi / 2, pt),
                spreadRadius: pt,
                blurRadius: pt,
              ),
              BoxShadow(
                // color: palette.coverColor,
                // color: Color(0xFF362B24),
                color: Color.alphaBlend(Colors.black26, palette.coverColor),
              ),
              BoxShadow(
                color: palette.coverColor,
                offset: Offset.fromDirection(-pi / 2, pt),
                blurRadius: pt,
                spreadRadius: -pt,
              )
            ],
          ),
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(right: 14 * pt, top: 6 * pt),
                alignment: AlignmentDirectional.centerEnd,
                child: CoverLettering(
                  text: "СОВ.СЕКРЕТНО",
                  font: "Oswald",
                  fontSize: f24,
                  point: pt,
                  decoration: TextDecoration.underline,
                  // textAlign: TextAlign.right,
                ),
              ),
              Column(
                children: [
                  CoverLettering(
                    text: "КГБ СССР",
                    fontSize: f96,
                    letterSpacing: 10,
                    point: pt,
                  ),
                  CoverLettering(
                    text: "УПРАВЛЕНИЕ -Т-",
                    fontSize: f48,
                    letterSpacing: 20,
                    point: pt,
                  ),
                ],
              ),
              // Spacer(),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  InnerShadow(
                    blur: pt / 4,
                    offset: Offset(0, pt / 4),
                    color: Colors.black26,
                    child: InnerShadow(
                      blur: pt / 4,
                      offset: Offset(0, -pt / 4),
                      color:
                          Color.alphaBlend(Colors.white24, palette.coverColor),
                      child: Container(
                        padding: EdgeInsets.all(2 * pt),
                        height: 46 * pt,
                        width: 46 * pt,
                        decoration: BoxDecoration(
                          color: palette.coverColor,
                          shape: BoxShape.circle,
                        ),
                        // child:
                      ),
                    ),
                  ),
                  svgEmblem,
                ],
              ),
              // Spacer(),
              Column(
                children: [
                  CoverLettering(
                    text: "МАТЕРИАЛЫ ДЕЛА",
                    fontSize: f48,
                    letterSpacing: 20,
                    point: pt,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CoverLettering(
                        text: "N°",
                        fontSize: f96,
                        point: pt,
                      ),
                      Container(
                        width: 2 * pt,
                      ),
                      Container(
                        width: 38 * pt,
                        height: 8 * pt,
                        decoration: BoxDecoration(
                          color: palette.oldPaperColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset.fromDirection(pi / 2, pt / 8),
                              // spreadRadius: pt,
                              blurRadius: pt / 8,
                            ),
                          ],
                        ),
                        alignment: AlignmentDirectional.center,
                        child: Text(
                          "416-Д",
                          style: GoogleFonts.getFont(
                            "PT Mono",
                            fontSize: f24,
                            color: palette.inkColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 72 * pt,
                    height: 8 * pt,
                    decoration: BoxDecoration(
                      color: palette.oldPaperColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset.fromDirection(pi / 2, pt / 8),
                          // spreadRadius: pt,
                          blurRadius: pt / 8,
                        ),
                      ],
                    ),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Экспедиция в Такла-Макан".toUpperCase(),
                      style: GoogleFonts.getFont(
                        "PT Mono",
                        fontSize: f24,
                        color: palette.inkColor,
                      ),
                    ),
                  ),
                ],
              ),
              Transform.rotate(
                angle: -pi / 85, // -180° / 85 = 2°
                child: Container(
                  padding: EdgeInsets.only(right: 6 * pt, bottom: 6 * pt),
                  alignment: AlignmentDirectional.bottomEnd,
                  child: Container(
                    width: 40 * pt,
                    height: 14 * pt,
                    decoration: BoxDecoration(
                      color: palette.newPaperColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset.fromDirection(pi / 2, pt / 8),
                          blurRadius: pt / 8,
                        ),
                      ],
                    ),
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Арх.№ О-6-09212".toUpperCase(),
                      style: GoogleFonts.getFont(
                        "Caveat",
                        fontSize: f40,
                        color: palette.penColor,
                      ),
                    ),
                  ),
                ),
              ),
              // Spacer(),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     Text(
              //       'point: $pt px\nfont 96: $f96 px\nhorizontal: $W px\nvertical: $H px',
              //       style: TextStyle(
              //         color: Color(0xFFFFFFFF),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }

  static const _gap = SizedBox(height: 10);
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
  return px * (screenWidth / (832 / 8));
}

/// This method is used to set padding/margin (for the top and bottom side)
/// and height of the screen or widget according to the Viewport height.
double getVerticalSize(double px) {
  num statusBar = MediaQueryData.fromWindow(window).viewPadding.top;
  num screenHeight = size.height - statusBar - padding * 2;
  return px * (screenHeight / (1184 / 8));
}

/// This method is used to set smallest px in image height and width.
double getSize(double px) {
  final height = getVerticalSize(px);
  final width = getHorizontalSize(px);

  if (height < width) {
    return height.toInt().toDouble();
  } else {
    return width.toInt().toDouble();
  }
}

/// This method is used to set text font size according to Viewport.
double getFontSize(double px) {
  // final double fontSize = (getSize(px) / 8).ceil() * 8;
  final fontSize = getSize(px);
  return fontSize;
}
