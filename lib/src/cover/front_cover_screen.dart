// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// import 'dart:ui' as ui;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../audio/audio_controller.dart';
// import '../audio/sounds.dart';
import '../settings/settings.dart';
import '../style/Emblema_KGB_colored.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/typography.dart';

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

    return Scaffold(
      backgroundColor: palette.tableColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          calculateSizes();
          final Widget svgEmblem = SvgPicture.string(
            rawSVG,
            height: 42 * pt,
            width: 22 * pt,
          );

          return CustomPaint(
            painter: TablePattern(),
            child: Center(
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
                      color:
                          Color.alphaBlend(Colors.black26, palette.coverColor),
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
                            color: Color.alphaBlend(
                                Colors.white24, palette.coverColor),
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
                                    offset:
                                        Offset.fromDirection(pi / 2, pt / 8),
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
        },
      ),
    );
  }
}
