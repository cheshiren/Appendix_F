// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../audio/audio_controller.dart';
import '../settings/settings.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({
    super.key,
    this.fromRoute,
    this.toRoute,
    required this.photoLink,
    required this.annotation,
    required this.description,
    required this.fromScreen,
    required this.toScreen,
  });

  final String? fromRoute;
  final String? toRoute;
  final String photoLink;
  final String annotation;
  final String description;
  final Widget fromScreen;
  final Widget toScreen;

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  bool _descVisible = false;
  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    final settingsController = context.watch<SettingsController>();
    final audioController = context.watch<AudioController>();

    // audioController.stopMusic();

    void _showDesc() {
      if (!_descVisible) {
        setState(() {
          _descVisible = true;
          print(_descVisible);
        });
      }
    }

    void _hideDesc() {
      if (_descVisible) {
        setState(() {
          _descVisible = false;
          print(_descVisible);
        });
      }
    }

    // void _popping = Navigator.pop(
    //     context,
    //     PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
    //       return widget;
    //     }, transitionsBuilder:
    //         (___, Animation<double> animation, ____, Widget child) {
    //       return FadeTransition(
    //         opacity: animation,
    //         child: RotationTransition(
    //           turns: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
    //           child: child,
    //         ),
    //       );
    //     }));

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
              child: GestureDetector(
                onHorizontalDragUpdate: (details) {
                  if (details.delta.dx < 0) {
                    // GoRouter.of(context).go(widget.toRoute);
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (BuildContext context, _, __) {
                          return widget.toScreen;
                        }, transitionsBuilder: (___,
                                Animation<double> animation,
                                ____,
                                Widget child) {
                          return SlideTransition(
                            position: Tween(
                              begin: Offset(1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        }));
                  } else if (details.delta.dx > 0) {
                    // GoRouter.of(context).go(widget.fromRoute);
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (BuildContext context, _, __) {
                          return widget.fromScreen;
                        }, transitionsBuilder: (___,
                                Animation<double> animation,
                                ____,
                                Widget child) {
                          // return FadeTransition(
                          //   opacity: animation,
                          //   child: RotationTransition(
                          //     turns: Tween<double>(begin: 0.5, end: 1.0)
                          //         .animate(animation),
                          //     child: child,
                          return SlideTransition(
                            position: Tween(
                              begin: Offset(-1, 0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        }));
                  }
                },
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
                        color: Color.alphaBlend(
                            Colors.black26, palette.coverColor),
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
                      alignment: AlignmentDirectional.topCenter,
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
                                    child: Image.asset(
                                      widget.photoLink,
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
                                                  sigmaX: pt / 2,
                                                  sigmaY: pt / 2),
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
                                                  sigmaX: pt / 2,
                                                  sigmaY: pt / 2),
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
                                        offset: Offset.fromDirection(
                                            pi / 2, pt / 2),
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
                                    2 * pt,
                                  ),
                                  child: Text(
                                    widget.annotation,
                                    style: GoogleFonts.getFont(
                                      "PT Mono",
                                      fontSize: f24,
                                      height: f32 / f24,
                                      color: palette.inkColor,
                                      // fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: Color(0xFFF8E9B9),
                                          offset: Offset(0, pt / 4),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            AnimatedOpacity(
                              opacity: _descVisible ? 1.0 : 0.0,
                              duration: Duration(milliseconds: 300),
                              child: Padding(
                                padding: EdgeInsets.only(top: 6 * pt),
                                child: ClipRect(
                                  child: BackdropFilter(
                                    filter: new ImageFilter.blur(
                                        sigmaX: pt, sigmaY: pt),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _descVisible = !_descVisible;
                                        });
                                      },
                                      child: Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Container(
                                            height: 86 * pt,
                                            width: 104 * pt,
                                            alignment: AlignmentDirectional
                                                .centerStart,
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    230, 30, 30, 30),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 6 * pt,
                                                horizontal: 4 * pt,
                                              ),
                                              child: Text(
                                                widget.description,
                                                style: GoogleFonts.getFont(
                                                  "PT Sans",
                                                  fontSize: f32,
                                                  height: f40 / f32,
                                                  color: Color(0xFFEEEEEE),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: _descVisible,
                              child: Container(
                                height: double.infinity,
                                width: double.infinity,
                                child: GestureDetector(
                                  onTap: _hideDesc,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
