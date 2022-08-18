import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AmbientScreen extends StatelessWidget {
  const AmbientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/filc_grayscale.svg",
              width: 50,
              height: 50,
            ),
            const Text(
              "Ambient",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
