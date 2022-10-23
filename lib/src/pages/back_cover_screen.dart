import 'dart:math';

// import 'package:flutter/foundation.dart';
import 'package:Appendix_F/src/settings/settings.dart';
import 'package:Appendix_F/src/texts/translations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:sized_context/sized_context.dart';

import '../resources/resources.dart';
import '../style/palette.dart';
import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'conclusion_screen.dart';

class BackCoverScreen extends StatefulWidget {
  const BackCoverScreen({super.key});

  @override
  State<BackCoverScreen> createState() => _BackCoverScreenState();
}

class _BackCoverScreenState extends State<BackCoverScreen> {
  bool _descVisible = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;
    final String svgString =
        '''<svg width="456" height="757" viewBox="0 0 456 757" fill="none">
<path d="M29.9998 342.5C23.601 287.77 11 94 7 2.99998L7 745.5C12.5 625 22.0745 384.438 29.9998 342.5ZM29.9998 342.5C159.35 334.062 382.593 330.094 429.5 338.5M29.9998 342.5C137.655 343.457 388.668 332.171 449 363.5" stroke="#C0BBB3" stroke-width="6" stroke-miterlimit="16" stroke-linecap="round" stroke-linejoin="round"  shape-rendering="crispEdges"/></svg>''';

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
          final double _W = getSize(64);
          final double _H = getSize(34);

          return CustomPaint(
            painter: TablePattern(),
            child: InnerCover(
              overlayTxt: backCoverTxt[lang],
              fromScreen: ConclusionScreen(),
              child: Stack(
                clipBehavior: Clip.none,
                // alignment: AlignmentDirectional.centerStart,
                children: [
                  Positioned(
                    top: (H - 251 * pt) / 2,
                    left: 5 * pt,
                    child: SvgPicture.string(
                      svgString,
                      height: 120 * pt,
                    ),
                  ),
                  Positioned(
                    top: -28.5 * pt,
                    left: 33.5 * pt,
                    child: Transform.rotate(
                      angle: -pi / 2,
                      child: Image(
                        image: FSBseal.image,
                        width: 28 * pt,
                        color: Color(0xCC6C1616),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -pi / 2,
                    child: Container(
                      height: _H,
                      width: _W,
                      decoration: BoxDecoration(
                        color: palette.newestPaperColor,
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            palette.newestPaperColor,
                            palette.newestPaperColor,
                            Color(0xFFFFFFFF),
                            Color(0xFFD0D3F1),
                            palette.newestPaperColor,
                            palette.newestPaperColor,
                          ],
                          transform: GradientRotation(pi / 180 * -1),
                          stops: [0, 0.4, 0.43, 0.46, 0.49, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(-pt / 4, 0),
                            // spreadRadius: pt / 2,
                            blurRadius: pt / 8,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2 * pt,
                              horizontal: 4 * pt,
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Всего прошито, пронумеровано и скреплено печатью",
                                      style: newStyle(),
                                    ),
                                    Text(
                                      "_________( ______________________ ) лист(а/ов)",
                                      style: newStyle(),
                                    ),
                                    Text(
                                      "Должность ________________________________",
                                      style: newStyle(),
                                    ),
                                    Text(
                                      "Подпись  __________________________________",
                                      style: newStyle(),
                                    ),
                                    Text(
                                      "« ______ » ___________________ 20 ______ г.",
                                      style: newStyle(),
                                    ),
                                  ],
                                ),
                                Positioned(
                                    top: 9 * pt,
                                    left: 4 * pt,
                                    child: Text("23", style: written())),
                                Positioned(
                                    top: 9 * pt,
                                    left: 20 * pt,
                                    child:
                                        Text("двадцать три", style: written())),
                                Positioned(
                                    top: 14 * pt,
                                    left: 24 * pt,
                                    child: Text("Старший лейтенант",
                                        style: written())),
                                Positioned(
                                    top: 18 * pt,
                                    left: 30 * pt,
                                    child: Text(
                                      "Vesper",
                                      style: TextStyle(
                                        fontFamily: "Oooh Baby",
                                        color: palette.penColor,
                                        fontSize: f48,
                                        // height: f32 / f24,
                                      ),
                                    )),
                                Positioned(
                                    top: 24 * pt,
                                    left: 4 * pt,
                                    child: Text("16", style: written())),
                                Positioned(
                                    top: 24 * pt,
                                    left: 20 * pt,
                                    child: Text("марта", style: written())),
                                Positioned(
                                    top: 24 * pt,
                                    left: 42 * pt,
                                    child: Text("07", style: written())),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 18 * pt,
                            left: 50 * pt,
                            child: Image(
                              image: FSBseal.image,
                              width: 28 * pt,
                              color: Color(0xCC8e2121),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
