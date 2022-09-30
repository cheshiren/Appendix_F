// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:ui';
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
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/typography.dart';

class Photo1AScreen extends StatelessWidget {
  const Photo1AScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    final settingsController = context.watch<SettingsController>();
    final audioController = context.watch<AudioController>();

    audioController.stopMusic();

    return Scaffold(
      backgroundColor: palette.tableColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          calculateSizes();
          final double _W = getSize(116);
          final double _H = getSize(158);

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
                      color:
                          Color.alphaBlend(Colors.black26, palette.coverColor),
                    ),
                    BoxShadow(
                      color: palette.coverColor,
                      offset: Offset.fromDirection(-pi / 2, pt / 4),
                      blurRadius: pt / 4,
                      spreadRadius: -pt / 4,
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all((H - _H) / 2),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        height: _H,
                        width: _W,
                        decoration: BoxDecoration(
                          // color: palette.oldPaperColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset.fromDirection(pi / 2, pt / 2),
                              spreadRadius: pt / 2,
                              blurRadius: pt / 2,
                            ),
                            BoxShadow(
                              color: Color.alphaBlend(
                                  Colors.black54, palette.oldPaperColor),
                            ),
                            BoxShadow(
                              color: palette.oldPaperColor,
                              offset: Offset.zero,
                              blurRadius: 12 * pt,
                              blurStyle: BlurStyle.inner,
                            ),
                          ],
                        ),
                      ),
                      Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 90 * pt,
                            height: 90 * pt,
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                  width: 68 * pt,
                                  height: 68 * pt,
                                  padding: EdgeInsets.all(pt * 2),
                                  alignment: AlignmentDirectional.center,
                                  child: Container(
                                    color: Colors.black54,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF8F8F8),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          offset: Offset.fromDirection(
                                              pi / 2, pt / 2),
                                          blurRadius: pt / 2,
                                        ),
                                      ]),
                                ),
                                Transform.rotate(
                                  angle: pi / 4, // 180° / 4 = 45°
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset.zero,
                                              blurRadius: pt / 4,
                                              blurStyle: BlurStyle.outer,
                                            )
                                          ],
                                        ),
                                        child: ClipRect(
                                          child: BackdropFilter(
                                            filter: new ImageFilter.blur(
                                                sigmaX: pt, sigmaY: pt),
                                            child: Container(
                                              width: 10 * pt,
                                              height: 33 * pt,
                                              decoration: BoxDecoration(
                                                color: Color(0x44D9D9D9),
                                                border: Border(
                                                  top: BorderSide(
                                                      color: palette
                                                          .oldPaperColor),
                                                  left: BorderSide(
                                                      color: palette
                                                          .oldPaperColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black26,
                                              offset: Offset.zero,
                                              blurRadius: pt / 4,
                                              blurStyle: BlurStyle.outer,
                                            )
                                          ],
                                        ),
                                        child: ClipRect(
                                          child: BackdropFilter(
                                            filter: new ImageFilter.blur(
                                                sigmaX: pt, sigmaY: pt),
                                            child: Container(
                                              width: 10 * pt,
                                              height: 33 * pt,
                                              decoration: BoxDecoration(
                                                color: Color(0x44D9D9D9),
                                                border: Border(
                                                  top: BorderSide(
                                                      color: palette
                                                          .oldPaperColor),
                                                  left: BorderSide(
                                                      color: palette
                                                          .oldPaperColor),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 100 * pt,
                                height: 54 * pt,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDCCE9E),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset:
                                          Offset.fromDirection(pi / 2, pt / 2),
                                      // spreadRadius: pt/2,
                                      blurRadius: pt / 2,
                                    ),
                                  ],
                                  border: Border(
                                    top: BorderSide(
                                      color: Color(0xFFF8E9B9),
                                      width: pt / 2,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    _dividers(),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100 * pt,
                                height: 54 * pt,
                                padding: EdgeInsets.fromLTRB(
                                  2 * pt,
                                  3 * pt,
                                  2 * pt,
                                  4 * pt,
                                ),
                                child: Text(
                                  "Слева направо: А.В. Артюшенков; С.Г. Горшков; Н.Н. Канаков; И.В. Ламарёв; профессор С.И. Квач – начальник экспедиции; Н.А. Лашков; П.Д. Воробьёв – фотограф; П.А. Велугин.\n\nМарт 1946 г.\n\nВскоре после съёмки Николай Канаков выбыл из отряда вследствие болезни. Его заменил Е.Р. Остроумов.",
                                  style: GoogleFonts.getFont(
                                    "PT Mono",
                                    fontSize: f24,
                                    height: 1.35,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 4 * pt,
      thickness: pt / 4,
      indent: 2 * pt,
      endIndent: 2 * pt,
      color: Color(0x40663100),
    );
  }
}

class _dividers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 4 * pt,
          thickness: pt / 4,
          indent: 2 * pt,
          endIndent: 2 * pt,
          color: Colors.transparent,
        ),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
        _divider(),
      ],
    );
  }
}
