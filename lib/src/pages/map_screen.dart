import 'dart:math';
import 'dart:ui';

import 'package:Appendix_F/src/pages/appendix_screen.dart';
import 'package:Appendix_F/src/pages/photo_screens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../style/palette.dart';
import '../style/responsive_screen.dart';
import '../style/table_pattern.dart';
import '../style/inner_cover.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
          final double _W = getSize(116);
          final double _H = getSize(158);
          final String imageLink =
              kReleaseMode ? 'assets/images/map.png' : 'images/map.png';
          final String svgString =
              '''<svg width="444" height="300" viewBox="0 0 444 300" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M1.83496 285.35C12.3537 288.716 23.1336 290.031 33.4131 294.017C36.038 295.035 38.7516 296.576 41.523 297.109C43.3844 297.467 45.3599 297.269 47.2507 297.566C50.8241 298.126 54.8834 297.796 58.5033 297.667C64.3348 297.459 70.2354 297.667 76.1931 297.667C79.9277 297.667 83.5248 297.452 86.7867 295.386C90.7541 292.873 95.1774 290.508 98.901 287.631C101.705 285.464 104.597 283.397 107.214 281.042C109.207 279.247 111.111 277.555 112.688 275.314C114.005 273.443 115.147 271.149 116.692 269.485C119.333 266.64 121.674 263.591 124.447 260.817C126.049 259.216 127.805 257.159 129.567 255.799C131.23 254.516 132.603 252.813 134.23 251.592C139.594 247.569 144.691 242.851 150.906 240.188C158.681 236.856 166.834 234.257 175.413 234.257C181.185 234.257 188.341 233.018 193.863 231.292C196.162 230.574 198.625 230.189 200.96 229.67C203.478 229.11 204.057 225.458 205.547 223.968C211.441 218.074 216.088 212.021 221.006 205.315C222.458 203.335 225.224 200.171 227.697 199.384C230.044 198.638 233.191 199.131 235.63 199.131C238.44 199.131 241.244 198.675 244.094 198.675C247.955 198.675 251.816 198.675 255.676 198.675C258.308 198.675 260.21 199.536 262.747 200.043C267.579 201.01 271.913 202.963 276.99 203.262C282.691 203.597 288.236 205.417 293.793 206.633C296.223 207.164 298.723 207.181 301.067 208.001C304.066 209.051 307.101 210.057 310.216 210.738C315.654 211.928 321.125 213.077 326.664 213.729C328.902 213.992 331.337 215.097 333.507 215.097C335.745 215.097 336.721 216.048 338.803 216.694C344.014 218.311 352.437 219.156 357.254 216.213C358.915 215.197 360.427 213.273 362.474 213.273C363.709 213.273 364.999 213.384 366.225 213.247C367.48 213.108 368.765 207.236 369.064 206.43" stroke="#A7211F" stroke-width="3" stroke-linecap="round"/><path d="M369.976 206.43C371.159 202.091 379.418 199.25 383.028 198.219C388.388 196.687 394.068 196.394 399.628 196.394" stroke="#A7211F" stroke-width="3" stroke-linecap="round"/><path d="M401.314 194.82C401.314 192.805 399.066 191.143 398.363 189.315C397.751 187.723 396.871 185.338 395.696 184.093C394.885 183.235 392.501 180.138 394.163 179.099C396.15 177.858 397.805 176.02 396.206 173.48C395.532 172.409 395.038 171.141 394.277 170.189C393.677 169.439 394.674 168.38 394.674 167.635C394.674 166.057 394.264 165.572 394.788 164.059C395.557 161.837 393.607 160.321 392.858 158.271C391.531 154.639 392.5 153.004 394.958 149.985C395.83 148.913 398.283 148.537 398.249 147.317C398.164 144.247 395.393 141.83 393.142 140.166C391.649 139.063 389.055 138.555 389.055 136.477C389.055 134.34 389.055 132.202 389.055 130.064C389.055 127.873 388.871 127.189 391.099 126.375C393.497 125.499 396.478 124.13 398.363 122.403C399.698 121.179 393.497 111.453 393.652 108.498C393.858 104.601 398.871 99.8323 401.314 97.261C402.525 95.986 403.806 94.1742 405.4 93.2883C407.652 92.0375 409.322 90.3161 411.416 89.0886C415.295 86.8147 420.696 88.4261 424.299 86.0239" stroke="#A7211F" stroke-width="3" stroke-linecap="round" stroke-dasharray="10 10"/><line x1="425.181" y1="84.8473" x2="436.847" y2="15.8194" stroke="#A7211F" stroke-width="2" stroke-linecap="round"/><circle cx="438" cy="6" r="6" fill="#A7211F"/></svg>''';

          return CustomPaint(
            painter: TablePattern(),
            child: InnerCover(
              fromScreen: AppendixScreen(),
              toScreen: Photo1AScreen(),
              child: Padding(
                padding: EdgeInsets.all((H - _H) / 2),
                child: Container(
                  decoration: BoxDecoration(
                    // color: palette.oldPaperColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset.fromDirection(pi / 2, pt / 2),
                        spreadRadius: pt / 2,
                        blurRadius: pt / 2,
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Image.asset(imageLink),
                      Positioned(
                        top: 86 * pt,
                        left: 50 * pt,
                        child: SvgPicture.string(
                          svgString,
                          width: 55 * pt,
                        ),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          AnimatedOpacity(
                            opacity: _descVisible ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 300),
                            child: Padding(
                              padding: EdgeInsets.all(6 * pt),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: new ImageFilter.blur(
                                      sigmaX: pt, sigmaY: pt),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _descVisible = !_descVisible;
                                      });
                                    },
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Container(
                                          // height: 86 * pt,
                                          // width: 104 * pt,
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          decoration: BoxDecoration(
                                              color: Color(0xE61E1E1E),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 6 * pt,
                                              horizontal: 4 * pt,
                                            ),
                                            child: Text(
                                              "Здесь приведена уменьшенная фотокопия масштабной карты СССР и окружающих его территорий от 1946 года. На карту нанесена красная линия маршрута экспедиции.\n\nМаршрут начинается от Москвы и двойной линией проходит по железнодорожной сети того времени: через Саратов в Ташкент и до Самарканда.\n\nОт Самарканда линия пунктиром ведёт к Коканду и Ошу, далее, зачеркнув перевал Талдык, упирается в Кашгар — в точности по маршрутам средневекового Шёлкового Пути.\n\nОт Кашгара и в самый центр безлюдной пустыни Такла‑Макан линия тонкая и прямая — признак того, что подробных данных о том, как именно продвигалась экспедиция в этих краях, не было.\n\nВ месте, где кончается линия, нарисован красный кружок и чернилами проставлена метка: «КФ937».",
                                              style: TextStyle(
                                                fontFamily: "PT Sans",
                                                fontSize: f32,
                                                height: f40 / f32,
                                                color: Color(0xFFEEEEEE),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: _descVisible,
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: GestureDetector(
                                onTap: _hideDesc,
                              ),
                            ),
                          ),
                        ],
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
