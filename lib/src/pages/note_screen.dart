import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sized_context/sized_context.dart';

import '../style/palette.dart';
import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'martyr_screen.dart';
import 'yagoda_screen.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  bool _descVisible = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;
    final String svgString =
        '''<svg width="265" height="61" viewBox="0 0 265 61" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M190.5 59.5L189.607 59.9496C189.831 60.3945 190.348 60.6067 190.82 60.4475C191.292 60.2883 191.574 59.8062 191.483 59.3166L190.5 59.5ZM0.0392321 6.06876C0.551933 13.5074 3.42271 18.86 8.18227 22.5808C12.8977 26.2671 19.3735 28.2783 26.9797 29.2728C42.1663 31.2585 62.4003 29.2423 83.4506 27.7475C104.582 26.2469 126.608 25.2608 145.642 29.198C164.639 33.1275 180.538 41.9336 189.607 59.9496L191.393 59.0504C181.963 40.3164 165.424 31.2475 146.047 27.2395C126.708 23.2392 104.423 24.2531 83.309 25.7525C62.1138 27.2577 42.1672 29.2415 27.239 27.2897C19.7879 26.3155 13.7228 24.3735 9.41404 21.0051C5.14938 17.6712 2.51258 12.8676 2.0345 5.93124L0.0392321 6.06876ZM191.483 59.3166C189.937 51.0291 190.18 45.0087 191.648 40.6534C193.102 36.3401 195.78 33.5904 199.295 31.8492C202.85 30.0888 207.293 29.3447 212.255 29.1575C217.211 28.9705 222.59 29.3404 227.987 29.7472C233.36 30.1521 238.759 30.5944 243.662 30.5292C248.555 30.4642 253.078 29.8954 256.669 28.2013C260.318 26.4796 262.971 23.6083 264.075 19.0911C265.164 14.6412 264.731 8.67109 262.461 0.725279L260.538 1.27472C262.768 9.07891 263.101 14.6556 262.133 18.616C261.181 22.5089 258.955 24.911 255.815 26.3925C252.617 27.9015 248.44 28.4655 243.636 28.5294C238.842 28.5931 233.546 28.1604 228.137 27.7528C222.753 27.3471 217.265 26.967 212.18 27.1589C207.101 27.3506 202.33 28.1143 198.408 30.057C194.446 32.019 191.386 35.1677 189.753 40.0145C188.133 44.8195 187.938 51.2209 189.517 59.6834L191.483 59.3166Z" fill="#575C91"/></svg>''';

    void _showDesc() {
      if (!_descVisible) {
        setState(() {
          _descVisible = true;
          print(_descVisible);
        });
      }
    }

    void _hideDesc() {
      if (_descVisible) {
        setState(() {
          _descVisible = false;
          print(_descVisible);
        });
      }
    }

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
              fromScreen: MartyrScreen(),
              toScreen: YagodaScreen(),
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 3 * pt, horizontal: 6 * pt),
                        child: Column(
                          children: [
                            Text(
                              "Справка\n",
                              textAlign: TextAlign.center,
                              style: _notePrint(),
                            ),
                            Text(
                              "Материалы, приведённые в данном фотоальбоме, являются приложением к ныне утерянному каталогу свидетельств под общим названием «Экспедиция в Такла‑Макан». Обстоятельства утраты полного каталога зафиксированы в отчёте Управления «Т» председателю Правительства РФ Ч.В.С. от 26.08.94 и хранятся в архиве Управления в составе тома «Инцидент О-6».\n\nВ состав сохранившегося альбома входят карта и две группы из шестнадцати чёрно-белых фотографий. Фотографии можно сопоставить в восемь пар, характер каждой из которых позволяет утверждать, что напечатаны они с одних и тех же негативов, однако, наглядные отличия говорят о влиянии дополнительных, неустановленных факторов. Фотографии аннотированы в промежутке между 1949-м и 1951-м годами одним из участников экспедиции, либо кем-то ещё, так или иначе вовлечённым в процесс.\n\nНа следующей странице приведён комментарий профессора кафедры археологии исторического факультета МГУ Ягоды М.А. Профессор Ягода, будучи внештатным экспертом Управления «Т» с соответствующим допуском, участвовал в процессе восстановления информации об утраченных свидетельствах, отнесённых к группе «Криптоархеология».",
                              style: _notePrint(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 64 * pt,
                      left: 52 * pt,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.string(
                            svgString,
                            width: 33 * pt,
                            height: 8 * pt,
                          ),
                          Transform.rotate(
                            angle: -pi / 180 * 3, // -3°,
                            child: Text(
                              "маловероятно",
                              style: written(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 130 * pt,
                      left: 46 * pt,
                      child: Transform.rotate(
                        angle: -pi / 180 * 3, // -3°,
                        child: Text(
                          "для информации: том „Инцидент О–6“ был перемещён\nиз архива Управления в главный архив ФСБ\n(не ранее 2003 года)",
                          style: written(),
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

TextStyle _notePrint() {
  // final palette = new Palette();
  return TextStyle(
    fontFamily: "Anonymous Pro",
    color: Colors.black87,
    fontSize: f24,
    height: f32 / f24,
  );
}
