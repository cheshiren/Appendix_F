import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'note_screen.dart';
import 'appendix_screen.dart';

class YagodaScreen extends StatefulWidget {
  const YagodaScreen({super.key});

  @override
  State<YagodaScreen> createState() => _YagodaScreenState();
}

class _YagodaScreenState extends State<YagodaScreen> {
  bool _descVisible = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();

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
          calculateSizes();
          final double _W = getSize(108);
          final double _H = getSize(122);

          return CustomPaint(
            painter: TablePattern(),
            child: InnerCover(
              fromScreen: NoteScreen(),
              toScreen: AppendixScreen(),
              child: Center(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: _H,
                  width: _W,
                  decoration: BoxDecoration(
                    color: Color(0xFFEDEAE0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, pt),
                        spreadRadius: pt,
                        blurRadius: pt,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 20 * pt,
                          ),
                          Container(
                            color: Color(0xFFE7E3CE),
                            height: 20 * pt,
                          ),
                          Container(
                            height: 20 * pt,
                          ),
                          Container(
                            color: Color(0xFFE7E3CE),
                            height: 20 * pt,
                          ),
                          Container(
                            height: 20 * pt,
                          ),
                          Container(
                            color: Color(0xFFE7E3CE),
                            height: 20 * pt,
                          ),
                        ],
                      ),
                      _tearLine(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _perfoEdge(),
                            _perfoEdge(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4 * pt, horizontal: 14 * pt),
                        child: Text(
                          "Когда большая и страшная война закончилась, победители – к немалому своему удивлению – обнаружили у себя на руках множество загадочных и малообъяснимых свидетельств, обретённых Третьим Рейхом за время недолгой активности оккультного общества «Аненербе». Свидетельства эти касались множества различных сфер, от биологии до астрономии, но самыми обильными были, конечно, археологические находки.\n\nОднако, страна немыслимым напряжением сил восстанавливала разрушенное войной и народному хозяйству было не до археологии. Тем не менее, наркомат просвещения посчитал некоторые из материалов настолько серьёзными, что организовал полноценную экспедицию из профессорского и студенческого состава исторического факультета МГУ в далёкий и глухой уголок Китая – в пустыню Такла‑Макан.\n\nНаличествующих данных недостаточно, чтобы понять, что же послужило толчком для кабинетных начальников пойти на такие расходы и каковы же были результаты мероприятия. Однако, документов «Приложения Ф» хватает, чтобы присвоить утраченному каталогу «Экспедиция в Такла‑Макан» класс опасности МАРТИР и принять соответствующие меры по нераспространению информации о нём.\n\nЯгода М.А.\n11 декабря 1999 года.",
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: "Minecart LCD",
                            fontSize: f16,
                            height: f32 / f16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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

TextStyle _notePrint() {
  final palette = new Palette();
  return TextStyle(
    fontFamily: "Anonymous Pro",
    color: Colors.black87,
    fontSize: f24,
    height: f32 / f24,
  );
}

class _tearLine extends StatelessWidget {
  const _tearLine({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black26,
      strokeWidth: pt / 4,
      dashPattern: [pt, 2 * pt],
      padding: EdgeInsets.zero,
      child: child,
    );
  }
}

class _perfoEdge extends StatelessWidget {
  const _perfoEdge({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return _tearLine(
      child: Container(
        width: 6 * pt,
        child: Column(
          children: [
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
            _hole(),
          ],
        ),
      ),
    );
  }
}

class _hole extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final palette = new Palette();
    return Padding(
      padding: EdgeInsets.all(2 * pt),
      child: Container(
        width: 2 * pt,
        height: 2 * pt,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color.alphaBlend(Colors.black12, palette.coverColor),
              blurStyle: BlurStyle.inner,
            ),
            BoxShadow(
              color: palette.coverColor,
              offset: Offset(0, pt),
              blurRadius: pt,
              spreadRadius: -pt,
            ),
          ],
        ),
      ),
    );
  }
}
