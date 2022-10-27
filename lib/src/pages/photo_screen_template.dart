// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// import 'dart:html';
import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sized_context/sized_context.dart';

// import '../audio/audio_controller.dart';
// import '../settings/settings.dart';
import '../style/palette.dart';
import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({
    super.key,
    this.fromRoute,
    this.toRoute,
    required this.photo,
    required this.annotation,
    required this.description,
    required this.fromScreen,
    required this.toScreen,
    this.label = "",
    this.crossed = false,
    this.svgString,
    this.svgDim,
    this.penText,
    this.overlayTxt,
  });

  final String? fromRoute;
  final String? toRoute;
  final Image photo;
  final String annotation;
  final String description;
  final Widget fromScreen;
  final Widget toScreen;
  final String label;
  final bool crossed;
  final String? svgString;
  final List<double>? svgDim;
  final String? penText;
  final String? overlayTxt;

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  bool _descVisible = false;
  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    // final settingsController = context.watch<SettingsController>();
    // final audioController = context.watch<AudioController>();
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;
    // audioController.stopMusic();

    // void _showDesc() {
    //   if (!_descVisible) {
    //     setState(() {
    //       _descVisible = true;
    //       print(_descVisible);
    //     });
    //   }
    // }

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
          calculateSizes(physSize, physDiagonal);
          final double _W = getSize(116);
          final double _H = getSize(158);

          return CustomPaint(
            painter: TablePattern(),
            child: InnerCover(
              overlayTxt: widget.overlayTxt,
              fromScreen: widget.fromScreen,
              toScreen: widget.toScreen,
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
                          width: 91 * pt,
                          height: 91 * pt,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Container(
                                width: 68 * pt,
                                height: 68 * pt,
                                padding: EdgeInsets.all(pt * 2),
                                alignment: AlignmentDirectional.center,
                                child: Stack(
                                  alignment: AlignmentDirectional.bottomStart,
                                  children: [
                                    // Image(image: AssetImage(widget.photoLink)),
                                    Image(image: widget.photo.image),
                                    if (widget.label != "")
                                      GradientText(
                                        widget.label +
                                            " ", // пробел, потому что без него какие-то артефакты на правой букве
                                        style: TextStyle(
                                          fontFamily: "Caveat",
                                          fontSize: f48,
                                        ),
                                        gradientDirection:
                                            GradientDirection.ttb,
                                        colors: [
                                          Color(0xFF130033),
                                          Color(0xFF130033),
                                          Color(0x40300478)
                                        ],
                                      )
                                  ],
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
                                              sigmaX: pt / 2, sigmaY: pt / 2),
                                          child: Container(
                                            width: 10 * pt,
                                            height: 33 * pt,
                                            decoration: BoxDecoration(
                                              color: Color(0x44D9D9D9),
                                              border: Border(
                                                top: BorderSide(
                                                    color: Color(0xFFE2E2E2)),
                                                left: BorderSide(
                                                    color: Color(0xFFE2E2E2)),
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
                                              sigmaX: pt / 2, sigmaY: pt / 2),
                                          child: Container(
                                            width: 10 * pt,
                                            height: 33 * pt,
                                            decoration: BoxDecoration(
                                              color: Color(0x44D9D9D9),
                                              border: Border(
                                                top: BorderSide(
                                                    color: Color(0xFFE2E2E2)),
                                                left: BorderSide(
                                                    color: Color(0xFFE2E2E2)),
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
                                    width: pt / 4,
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
                              child: Stack(
                                children: [
                                  Text(
                                    widget.annotation,
                                    style: _printedAnnotation(),
                                  ),
                                  if (widget.crossed)
                                    Text(
                                        "\n\n\n\n////////////////////////////////////////////////\n///////////////////////////",
                                        style: _printedAnnotation())
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (widget.penText != null)
                      Positioned(
                        top: widget.svgDim![1] * pt,
                        left: widget.svgDim![0] * pt,
                        child: Column(
                          children: [
                            if (widget.svgString != null)
                              SvgPicture.string(
                                widget.svgString!,
                                width: widget.svgDim![2] * pt,
                                height: widget.svgDim![3] * pt,
                              ),
                            Text(
                              widget.penText!,
                              style: written(),
                            ),
                          ],
                        ),
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
                                        alignment:
                                            AlignmentDirectional.centerStart,
                                        decoration: BoxDecoration(
                                            color: Palette().overlayColor,
                                            borderRadius:
                                                BorderRadius.circular(2 * pt)),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 6 * pt,
                                            horizontal: 4 * pt,
                                          ),
                                          child: Text(
                                            widget.description,
                                            style: TextStyle(
                                              fontFamily: "PT Sans",
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

TextStyle _printedAnnotation() {
  final palette = new Palette();
  return TextStyle(
    fontFamily: "PT Mono",
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
  );
}
