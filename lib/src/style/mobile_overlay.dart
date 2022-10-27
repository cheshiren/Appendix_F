import 'dart:ui';

import 'package:Appendix_F/src/style/palette.dart';
import 'package:flutter/material.dart';

import '../settings/settings.dart';
import 'responsive_screen.dart';

class TextOverlay extends StatefulWidget {
  TextOverlay({
    super.key,
    required this.txt,
    this.overlayDesc = false,
  });

  final String? txt;
  bool overlayDesc;

  @override
  State<TextOverlay> createState() => _TextOverlayState();
}

class _TextOverlayState extends State<TextOverlay> {
  bool overlayDesc = false;

  @override
  Widget build(BuildContext context) {
    return (isMobile || nonRussian)
        ? Visibility(
            visible: widget.overlayDesc,
            child: GestureDetector(
              onTap: () => setState(() {
                widget.overlayDesc = false;
              }),
              child: BackdropFilter(
                filter: new ImageFilter.blur(sigmaX: pt, sigmaY: pt),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Palette().overlayColor,
                  alignment: AlignmentDirectional.center,
                  padding: EdgeInsets.symmetric(
                      vertical: 16 * pt, horizontal: padDesc),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: descMaxWidth),
                    child: SingleChildScrollView(
                      child: Text(
                        widget.txt != null ? widget.txt! : "ERROR",
                        style: TextStyle(
                          fontFamily: "PT Sans",
                          fontSize: fDesc,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Container();
  }
}
