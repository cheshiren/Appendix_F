// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ui' as ui;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';

import '../audio/audio_controller.dart';
import '../audio/sounds.dart';
import '../settings/settings.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/typography.dart';

class FrontCoverScreen extends StatelessWidget {
  const FrontCoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    final settingsController = context.watch<SettingsController>();
    final audioController = context.watch<AudioController>();

    return Scaffold(
      backgroundColor: palette.coverColor,
      body: ResponsiveScreen(
        mainAreaProminence: 0.45,
        squarishMainArea: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CoverLettering(
                text: "КГБ СССР",
                letterSpacing: 10,
              ),
              CoverLettering(
                text: "УПРАВЛЕНИЕ -Т-",
                fontSize: 48,
                letterSpacing: 20,
              ),
              Spacer(),
              CoverLettering(
                text: "МАТЕРИАЛЫ ДЕЛА",
                fontSize: 48,
                letterSpacing: 20,
              ),
              Spacer(),
            ],
          ),
        ),
        rectangularMenuArea: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [],
          // [
          //   ElevatedButton(
          //     onPressed: () {
          //       audioController.playSfx(SfxType.buttonTap);
          //       GoRouter.of(context).go('/play');
          //     },
          //     child: const Text('Play'),
          //   ),
          //   _gap,
          //   ElevatedButton(
          //     onPressed: () => GoRouter.of(context).go('/settings'),
          //     child: const Text('Settings'),
          //   ),
          //   _gap,
          //   Padding(
          //     padding: const EdgeInsets.only(top: 32),
          //     child: ValueListenableBuilder<bool>(
          //       valueListenable: settingsController.muted,
          //       builder: (context, muted, child) {
          //         return IconButton(
          //           onPressed: () => settingsController.toggleMuted(),
          //           icon: Icon(muted ? Icons.volume_off : Icons.volume_up),
          //         );
          //       },
          //     ),
          //   ),
          //   _gap,
          //   const Text('Music by Mr Smith'),
          //   _gap,
          // ],
        ),
      ),
    );
  }

  static const _gap = SizedBox(height: 10);
}
