import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';

import '../style/palette.dart';

class CoverLettering extends StatelessWidget {
  const CoverLettering({
    super.key,
    this.text = "",
    this.font = "Orelega One",
    this.fontSize = 96.0,
    this.letterSpacing = 0,
  });
  final String text;
  final String font;
  final double fontSize;
  final double letterSpacing;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();

    Widget result = InnerShadow(
      blur: 1,
      offset: const Offset(0, 2),
      color: Color(0x40000000),
      child: InnerShadow(
        blur: 1,
        offset: const Offset(0, -2),
        color: Color(0xFFFFFCDF),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.getFont(
            font,
            fontSize: fontSize,
            letterSpacing: fontSize / 100 * letterSpacing,
            color: palette.goldenLettersColor,
          ),
        ),
      ),
    );
    // Widget result = Stack(
    //   children: [
    //     Positioned(
    //       top: -4.0,
    //       child: Text(
    //         text,
    //         textAlign: TextAlign.center,
    //         style: GoogleFonts.getFont(
    //           font,
    //           fontSize: fontSize,
    //           letterSpacing: fontSize / 100 * letterSpacing,
    //           color: Color(0x40000000),
    //         ),
    //       ),
    //     ),
    //     BackdropFilter(
    //       filter: ui.ImageFilter.blur(sigmaX: 0.0, sigmaY: 2),
    //       child: InnerShadow(
    //         blur: 1,
    //         offset: const Offset(0, -2),
    //         color: Color(0xFFFFFCDF),
    //         child: Text(
    //           text,
    //           textAlign: TextAlign.center,
    //           style: GoogleFonts.getFont(
    //             font,
    //             fontSize: fontSize,
    //             letterSpacing: fontSize / 100 * letterSpacing,
    //             color: palette.goldenLettersColor,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
    return result;
  }
}
