import 'dart:math';
// import 'dart:ui';

// import 'package:flutter/foundation.dart';
import 'package:Appendix_F/src/settings/settings.dart';
import 'package:Appendix_F/src/texts/translations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:sized_context/sized_context.dart';

import '../resources/resources.dart';
import '../style/palette.dart';
import '../style/typography.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';
import 'photo_screens.dart';
import 'back_cover_screen.dart';

class ConclusionScreen extends StatefulWidget {
  const ConclusionScreen({super.key});

  @override
  State<ConclusionScreen> createState() => _ConclusionScreenState();
}

class _ConclusionScreenState extends State<ConclusionScreen> {
  bool _descVisible = false;

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();
    Size physSize = context.sizeInches;
    double physDiagonal = context.diagonalInches;
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
              overlayTxt: conclusionTxt[lang],
              fromScreen: Photo8BScreen(),
              toScreen: BackCoverScreen(),
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
                                Colors.black26, palette.newestPaperColor),
                          ),
                          BoxShadow(
                            color: palette.newestPaperColor,
                            offset: Offset.zero,
                            blurRadius: 12 * pt,
                            blurStyle: BlurStyle.inner,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(6 * pt),
                        child: Column(
                          children: [
                            Text(
                              "Заключение по результатам гермоконтроля",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "PT Sans",
                                color: Color(0xBD000000),
                                fontSize: f24,
                                height: f32 / f24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3 * pt),
                            Text(
                              "Крайняя фотография и аннотация к ней свидетельствуют о значительном влиянии «поля КФ», тензодатчики Энджелла регистрируют напряжение на уровне 108,6 МПа. Работа с документом возможна только при наличии барьеров уровня не ниже мартировского.\n\nОчевидно, техники подобного уровня не существовало на момент написания аннотаций (конец сороковых — начало пятидесятых). Как следствие, личность человека, аннотировавшего фотографии, наверняка, понесла необратимый урон.\n\nДо сих пор не удалось со стопроцентной достоверностью определить автора аннотаций.\n\nОднако, большая часть данных указывает на то, что им был Канаков Николай Наумович — тот самый член отряда, который выбыл из экспедиции ещё до её начала.\n\nКанаков Н.Н. умер в 1959 году в Московской психиатрической больнице №3. Кремирован на Новом Донском кладбище.",
                              style: newStyle(),
                            ),
                            SizedBox(height: 16 * pt),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Класс опасности материалов подтверждаю.\nУсловия хранения оставить без изменений.\nСледующий контроль не позднее 2015 года.\n\nСт. л—т Ю. Д. Веспер\n15 марта 2007 года.",
                                  style: newStyle(),
                                ),
                                Transform.rotate(
                                  angle: pi / 180 * 4,
                                  child: Image(
                                    image: FSBseal.image,
                                    width: 28 * pt,
                                    color: Color(0xCC8e2121),
                                  ),
                                ),
                                SizedBox(width: pt),
                              ],
                            ),
                            // SizedBox(height: 3 * pt),
                            Expanded(
                              child: Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Vesper",
                                  style: TextStyle(
                                    fontFamily: "Oooh Baby",
                                    color: palette.penColor,
                                    fontSize: f72,
                                    height: f72 / f48,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
