import 'package:flutter/material.dart';
import 'package:patterns_canvas/patterns_canvas.dart';

import 'palette.dart';

class TablePattern extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    TexturePattern(
            bgColor: Palette().tableColor,
            fgColor: Color.alphaBlend(Color(0x08ffffff), Palette().tableColor),
            featuresCount: 128)
        .paintOnWidget(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
