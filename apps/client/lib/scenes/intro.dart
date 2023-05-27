import 'package:flutter/material.dart';

class IntroScene extends StatefulWidget {
  const IntroScene({super.key});

  @override
  State createState() => _IntroSceneState();
}

class _IntroSceneState extends State<IntroScene> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 237,
          height: 192,
          child: Image.asset('lib/assets/images/intro_scene_webzen.png'),
        ),
      )
    );
  }
}
