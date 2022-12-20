import 'dart:math';
import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 21, 41, 45),
                Color.fromARGB(255, 22, 11, 31),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 30, 31, 32),
                ),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Image.asset('assets/images/Logo.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: getText('IV-Group', 20),
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      getText('О компании', 20),
                      const Spacer(),
                      getText('Контакты', 20),
                      const Spacer(),
                      getText('Наши продукты', 20),
                      const Spacer(
                        flex: 6,
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Positioned(
                    right: -50,
                    top: 0,
                    child: SizedBox(
                      width: 900,
                      height: 1100,
                      child: Image.asset(
                        'assets/images/dots2.png',
                        width: 800,
                        height: 1100,
                        opacity: const AlwaysStoppedAnimation(1),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 342,
                          bottom: 839,
                        ),
                        child: Row(
                          children: [
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                getText('IV-Group', 76),
                                getText(
                                    'Современные проблемы - новые решения', 25),
                              ],
                            ),
                            const Spacer(
                              flex: 6,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 226),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.8,
                              child: FittedBox(
                                child: SizedBox(
                                  width: 668,
                                  height: 445,
                                  child: Image.asset(
                                      'assets/images/About_image.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.2,
                              child: FittedBox(
                                child: getText(
                                  'О нас:\n«IV-Group»-современная IT-компания, занимающаяся разработкой\nпрограммного обеспечения. Современные решения- наше все.\nИмеем дела с разработкой приложений с большим количеством\nразличных технологий, что доказывает нашу надежность.\nЗанимаемся продуктовой и заказной разработкой.',
                                  25,
                                  spacing: 3,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 676),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Benefit(
                              text: 'Мобильная разработка',
                              imagePath: 'assets/images/Mobile.png',
                            ),
                            Benefit(
                              text: 'Веб разработка',
                              imagePath: 'assets/images/Web.png',
                            ),
                            Benefit(
                              text: 'Инновационные технологии',
                              imagePath: 'assets/images/Innovation.png',
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 228),
                        child: Divider(
                          color: Color.fromARGB(255, 178, 178, 178),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 58),
                        child: getText('Есть вопросы, обратитесь к нам', 25),
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getText('Контактные данные', 25,
                                  color:
                                      const Color.fromARGB(204, 255, 255, 255)),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 411, top: 10),
                                child: SelectableText(
                                  'Ivgroup@mail.ru',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Sansation',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.13,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 6,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Screen(
                    degrees: 0,
                    left: 136,
                    top: 149,
                  ),
                  const Screen(
                    degrees: 100,
                    right: 138,
                    top: 198,
                  ),
                  const Screen(
                    degrees: -30,
                    left: 316,
                    top: 717,
                  ),
                  const Screen(
                    degrees: 40,
                    right: 575,
                    top: 476,
                  ),
                  const Screen(
                    degrees: 60,
                    right: 123,
                    top: 1760,
                  ),
                  const Screen(
                    degrees: 0,
                    left: 216,
                    top: 1860,
                  ),
                  const Screen(
                    degrees: -30,
                    left: 340,
                    bottom: 1036,
                  ),
                  const Screen(
                    degrees: 90,
                    right: 370,
                    bottom: 962,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Screen extends StatelessWidget {
  const Screen(
      {Key? key,
      required this.degrees,
      this.left,
      this.top,
      this.right,
      this.bottom})
      : super(key: key);
  final int degrees;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: SizedBox(
        width: 120,
        height: 100,
        child: Transform.rotate(
          angle: degrees * pi / 180,
          child: SvgPicture.asset(
            'assets/images/screen.svg',
            color: const Color.fromARGB(102, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

Widget getText(String text, double fontSize, {double? spacing, Color? color}) =>
    AutoSizeText(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Sansation',
        color: color ?? Colors.white,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.13,
        height: spacing,
        fontSize: fontSize,
      ),
    );

class Benefit extends StatelessWidget {
  const Benefit({Key? key, required this.text, required this.imagePath})
      : super(key: key);
  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 602,
                  height: 602,
                  child: Image.asset(
                    'assets/images/glow_effect.png',
                    scale: 0.1,
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Image.asset(imagePath),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: getText(text, 30),
            ),
          ],
        ),
      ),
    );
  }
}

final Shader linearGradient = const LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
