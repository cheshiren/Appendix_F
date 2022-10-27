import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

import '../pages/front_cover_screen.dart';
import '../settings/settings.dart';
import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../texts/translations.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;

    calculateSizes(physSize, physDiagonal);

    return Scaffold(
      backgroundColor: Color(0xFF1d140f),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: _ltxt("Выберите язык", TextAlign.right)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pt),
                  child: _ltxt("|", TextAlign.center),
                ),
                Expanded(child: _ltxt("Choose the language", TextAlign.left)),
              ],
            ),
            SizedBox(height: pt),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    // minimumSize: MaterialStatePropertyAll<Size>(
                    //   Size(70, 20),
                    // ),
                    // maximumSize: MaterialStatePropertyAll<Size>(
                    //   Size(70, 100),
                    // ),
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color(0x33F1D6A1),
                    ),
                  ),
                  onPressed: () {
                    lang = l10n.rus;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FrontCoverScreen()),
                    );
                  },
                  child: _ltxt("Русский", TextAlign.center),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                      Color(0x33F1D6A1),
                    ),
                  ),
                  onPressed: () {
                    lang = l10n.eng;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FrontCoverScreen()),
                    );
                  },
                  child: _ltxt("English", TextAlign.center),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

TextStyle _lang() {
  return TextStyle(
    fontFamily: "PT Sans",
    fontSize: fDesc,
    color: Palette().goldenLettersColor,
  );
}

Text _ltxt(String txt, TextAlign ta) {
  return Text(
    textAlign: ta,
    txt,
    style: _lang(),
  );
}
