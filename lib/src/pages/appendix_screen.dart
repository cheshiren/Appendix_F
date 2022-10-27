import 'dart:math';

import 'package:Appendix_F/src/settings/settings.dart';
import 'package:Appendix_F/src/texts/translations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sized_context/sized_context.dart';

import '../style/palette.dart';
import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'map_screen.dart';
import 'yagoda_screen.dart';

class AppendixScreen extends StatefulWidget {
  const AppendixScreen({super.key});

  @override
  State<AppendixScreen> createState() => _AppendixScreenState();
}

class _AppendixScreenState extends State<AppendixScreen> {
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
              overlayTxt: appendixTxt[lang],
              fromScreen: YagodaScreen(),
              toScreen: MapScreen(),
              child: Padding(
                padding: EdgeInsets.all((H - _H) / 2),
                child: Container(
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
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40 * pt, bottom: 110 * pt),
                      child: Text(
                        "Приложение Ф".toUpperCase(),
                        textAlign: TextAlign.center,
                        style: oldPrint(),
                      ),
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
