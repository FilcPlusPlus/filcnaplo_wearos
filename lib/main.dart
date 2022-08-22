import 'package:flutter/material.dart';
import 'package:wear/wear.dart';

void main() {
  runApp(const MyApp());
}

Color brandColor = const Color.fromARGB(255, 73, 185, 160);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Filc++',
      debugShowCheckedModeBanner: false,
      home: WatchScreen(),
    );
  }
}

class WatchScreen extends StatelessWidget {
  const WatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WatchShape(
        builder: (BuildContext context, WearShape shape, Widget? child) =>
            AmbientMode(
          builder: (context, mode, child) =>
              mode == WearMode.active ? Container() : Container(),
        ),
      );
}
