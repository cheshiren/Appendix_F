import 'dart:math';

import 'package:Appendix_F/src/style/mobile_overlay.dart';
import 'package:Appendix_F/src/texts/translations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../settings/settings.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';

class InnerCover extends StatefulWidget {
  const InnerCover({
    super.key,
    this.fromScreen,
    this.toScreen,
    required this.child,
    this.overlayTxt,
  });

  final Widget? fromScreen;
  final Widget? toScreen;
  final Widget child;
  final String? overlayTxt;

  @override
  State<InnerCover> createState() => _InnerCoverState();
}

class _InnerCoverState extends State<InnerCover> {
  bool _overlayDesc = false;

  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();

    return Center(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx < 0 && widget.toScreen != null) {
            Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
                  return widget.toScreen!;
                }, transitionsBuilder:
                    (___, Animation<double> animation, ____, Widget child) {
                  return SlideTransition(
                    position: Tween(
                      begin: Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: child,
                  );
                }));
          } else if (details.delta.dx > 0 && widget.fromScreen != null) {
            Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
                  return widget.fromScreen!;
                }, transitionsBuilder:
                    (___, Animation<double> animation, ____, Widget child) {
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
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
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
                    color: Color.alphaBlend(Colors.black26, palette.coverColor),
                  ),
                  BoxShadow(
                    color: palette.coverColor,
                    offset: Offset.fromDirection(-pi / 2, pt / 4),
                    blurRadius: pt / 4,
                    spreadRadius: -pt / 4,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  widget.child,
                  if (nonRussian || isMobile)
                    GestureDetector(
                      onTap: () => setState(() {
                        _overlayDesc = true;
                      }),
                    ),
                ],
              ),
            ),
            TextOverlay(
              txt: widget.overlayTxt,
              overlayDesc: _overlayDesc,
            )
          ],
        ),
      ),
    );
  }
}
