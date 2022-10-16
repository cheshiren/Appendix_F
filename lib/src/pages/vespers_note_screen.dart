import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sized_context/sized_context.dart';

import '../style/palette.dart';
import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'photo_screens.dart';

class VespersNoteScreen extends StatefulWidget {
  const VespersNoteScreen({super.key});

  @override
  State<VespersNoteScreen> createState() => _VespersNoteScreenState();
}

class _VespersNoteScreenState extends State<VespersNoteScreen> {
  bool _descVisible = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;
    final String svgString =
        '''<svg width="262" height="69" viewBox="0 0 262 69" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 6.01175C30.3798 1.99054 249.195 -2.8983 260 6.01182C270.805 14.9219 39.1321 15.6949 23 25.0118C6.86788 34.3288 231.928 24.3348 247.5 34.0118C263.072 43.6887 41.5 28.7281 172 67.0674" stroke="#000000" stroke-width="2"/></svg>''';

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

    return Scaffold(
      backgroundColor: palette.tableColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          calculateSizes(physSize, physDiagonal);
          final double _W = getSize(100);
          final double _H = getSize(123);

          return CustomPaint(
            painter: TablePattern(),
            child: InnerCover(
              fromScreen: Photo8AScreen(),
              toScreen: Photo1BScreen(),
              child: Center(
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
                            offset: Offset.zero,
                            spreadRadius: pt / 2,
                            blurRadius: pt / 2,
                          ),
                          BoxShadow(
                            color: Color.alphaBlend(
                                Colors.black45, Color(0xFFF5F5FB)),
                          ),
                          BoxShadow(
                            color: Color(0xFFF5F5FB),
                            offset: Offset.zero,
                            blurRadius: 12 * pt,
                            blurStyle: BlurStyle.inner,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          CustomPaint(
                            size: Size(_W, _H),
                            painter: _grid(),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              12 * pt,
                              10 * pt,
                              15 * pt,
                              3 * pt,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Вниманию сотрудников департамента архивации.\n\nСледующая группа фотографий, в основном, повторяет предыдущие. Однако, отличия заметны и — на данном этапе развития инструментария — необъяснимы.\n\nПеред продолжением подготовить «Формуляр 09-В-2».",
                                  style: written(),
                                ),
                                SizedBox(
                                  height: 15 * pt,
                                ),
                                Text(
                                  "Гермоконтроль\nст. л—т Ю. Д. Веспер\n02.2007",
                                  style: written(),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 52 * pt,
                            left: 48 * pt,
                            child: SvgPicture.string(
                              svgString,
                              width: 33 * pt,
                              height: 8 * pt,
                              color: palette.penColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20 * pt,
                        horizontal: 8 * pt,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0, pt / 4),
                                  blurRadius: pt / 4,
                                  blurStyle: BlurStyle.outer,
                                ),
                              ],
                            ),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: pt / 8,
                                  sigmaY: pt / 8,
                                ),
                                child: Container(
                                  height: 8 * pt,
                                  // color: Colors.white12,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Color(0x3C9E9E9E),
                                        Color(0x5CFFFFFF),
                                        // Colors.white24,
                                        Color(0x3C9E9E9E),
                                      ],
                                      stops: [0.3, 0.6, 0.7],
                                      transform:
                                          GradientRotation(pi / 180 * 60),
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
                                  offset: Offset(0, pt / 4),
                                  blurRadius: pt / 4,
                                  blurStyle: BlurStyle.outer,
                                ),
                              ],
                            ),
                            child: ClipRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: pt / 8,
                                  sigmaY: pt / 8,
                                ),
                                child: Container(
                                  height: 8 * pt,
                                  // color: Colors.white12,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomLeft,
                                      end: Alignment.topRight,
                                      colors: [
                                        Color(0x3C9E9E9E),
                                        Color(0x5CFFFFFF),
                                        // Colors.white24,
                                        Color(0x3C9E9E9E),
                                      ],
                                      stops: [0.3, 0.4, 0.7],
                                      transform:
                                          GradientRotation(pi / 180 * 60),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
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

class _grid extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0x426FB9FF)
      ..strokeWidth = pt / 4
      ..style = PaintingStyle.stroke;
    final redPaint = Paint()
      ..color = Color(0x42C62828)
      ..strokeWidth = pt / 2
      ..style = PaintingStyle.stroke;

    final path = Path();
    final redPath = Path();
    for (var i = 3 * pt; i < size.width; i += 3 * pt.toInt()) {
      if (i < size.width - 3.5 * 3 * pt && i > size.width - 4.5 * 3 * pt)
        continue;
      path.moveTo(i.toDouble(), 0);
      path.lineTo(i.toDouble(), size.height);
    }
    for (var i = 3 * pt; i < size.height; i += 3 * pt.toInt()) {
      path.moveTo(0, i.toDouble());
      path.lineTo(size.width, i.toDouble());
    }
    redPath.moveTo(size.width - 11 * pt, 0);
    redPath.lineTo(size.width - 11 * pt, size.height);
    canvas.drawPath(path, paint);
    // canvas.drawShadow(path, Color(0xff6FBAFF), pt / 2, false);
    canvas.drawPath(redPath, redPaint);
    // canvas.drawShadow(redPath, Color(0xffC62828), pt / 2, false);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
