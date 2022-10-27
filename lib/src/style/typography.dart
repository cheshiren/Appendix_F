// import 'dart:ui' as ui;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';

import 'responsive_screen.dart';
import 'palette.dart';

class CoverLettering extends StatelessWidget {
  const CoverLettering({
    super.key,
    this.text = "CoverLettering",
    this.font = "Orelega One",
    this.fontSize = 96.0,
    this.letterSpacing = 0,
    this.point = 8,
    this.decoration,
    // this.textAlign,
  });
  final String text;
  final String font;
  final double fontSize;
  final double letterSpacing;
  final double point;
  final TextDecoration? decoration;
  // final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();

    Widget result = InnerShadow(
      blur: 1,
      offset: Offset(0, point / 4),
      color: Colors.black26,
      child: InnerShadow(
        blur: 1,
        offset: Offset(0, -point / 4),
        color: Color.alphaBlend(Colors.white, palette.goldenLettersColor),
        child: Text(
          text,
          // textAlign: textAlign,
          style: TextStyle(
            fontFamily: font,
            fontSize: fontSize,
            letterSpacing: fontSize / 100 * letterSpacing,
            color: palette.goldenLettersColor,
            decoration: decoration,
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
    //         style: TextStyle(
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
    //           style: TextStyle(
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

TextStyle written() {
  final palette = new Palette();
  return TextStyle(
    fontFamily: "Bad Script",
    fontSize: f24,
    height: 6 * pt / f24,
    color: palette.penColor,
    fontWeight: FontWeight.w700,
  );
}

TextStyle oldPrint() {
  final palette = new Palette();
  return TextStyle(
    fontFamily: "PT Mono",
    fontSize: f24,
    color: palette.inkColor,
  );
}

TextStyle newStyle() {
  // final palette = new Palette();
  return TextStyle(
      fontFamily: "PT Sans",
      color: Color(0xBD000000),
      fontSize: f24,
      height: f32 / f24,
      fontFeatures: [FontFeature.enable("lnum")]);
}
