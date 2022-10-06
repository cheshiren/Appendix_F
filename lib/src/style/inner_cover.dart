import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../style/palette.dart';
import '../style/responsive_screen.dart';

class InnerCover extends StatelessWidget {
  const InnerCover({
    super.key,
    this.fromScreen,
    this.toScreen,
    required this.child,
  });

  final Widget? fromScreen;
  final Widget? toScreen;
  final Widget child;

  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();

    return Center(
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.delta.dx < 0 && toScreen != null) {
            Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
                  return toScreen!;
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
          } else if (details.delta.dx > 0 && fromScreen != null) {
            Navigator.push(
                context,
                PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
                  return fromScreen!;
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
        child: Container(
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
          child: child,
        ),
      ),
    );
  }
}
