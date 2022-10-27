import 'dart:math';

import 'package:Appendix_F/src/texts/translations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:sized_context/sized_context.dart';

import '../settings/settings.dart';
import '../style/palette.dart';
// import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'front_cover_screen.dart';
import 'note_screen.dart';

class MartyrScreen extends StatefulWidget {
  const MartyrScreen({super.key});

  @override
  State<MartyrScreen> createState() => _MartyrScreenState();
}

class _MartyrScreenState extends State<MartyrScreen> {
  // bool _descVisible = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;
    // void _showDesc() {
    //   if (!_descVisible) {
    //     setState(() {
    //       _descVisible = true;
    //       print(_descVisible);
    //     });
    //   }
    // }

    // void _hideDesc() {
    //   if (_descVisible) {
    //     setState(() {
    //       _descVisible = false;
    //       print(_descVisible);
    //     });
    //   }
    // }

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
              fromScreen: FrontCoverScreen(),
              toScreen: NoteScreen(),
              overlayTxt: martyrTxt[lang],
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
                                Colors.black26, palette.newPaperColor),
                          ),
                          BoxShadow(
                            color: palette.newPaperColor,
                            offset: Offset.zero,
                            blurRadius: 12 * pt,
                            blurStyle: BlurStyle.inner,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "внимание\n\nдля работы с материалами необходим допуск не ниже класса мартир\n\nперед прочтением подготовить\nформуляр 09–В–2"
                              .toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Rubik",
                            color: Color(0xFF8E1C1A),
                            fontSize: f48,
                            height: f48 / f32,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                color: Color(0xFF8E1C1A),
                                blurRadius: pt / 4,
                              ),
                            ],
                          ),
                        ),
                      ),
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
