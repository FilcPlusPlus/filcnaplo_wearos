// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:filc_wear/extensions/no_end_glow.dart';
import 'package:filc_wear/widgets/grade_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .55,
                  height: MediaQuery.of(context).size.height * .90,
                  child: ShaderMask(
                      shaderCallback: (Rect rect) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.purple,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.purple
                          ],
                          stops: [
                            0.0,
                            0.05,
                            0.95,
                            1.0
                          ], // 10% purple, 80% transparent, 10% purple
                        ).createShader(rect);
                      },
                      blendMode: BlendMode.dstOut,
                      child: ScrollConfiguration(
                        behavior: NoEndGlow(),
                        child: ListView(
                          clipBehavior: Clip.hardEdge,
                          children: [
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                            GradeCard(),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
