import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class IntroScene extends StatefulWidget {
  const IntroScene({super.key});

  @override
  State createState() => _IntroSceneState();
}

class _IntroSceneState extends State<IntroScene> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  static late AudioPlayer _player;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _player = AudioPlayer();
    _player.setPlayerMode(PlayerMode.lowLatency);
    _player.setSource(AssetSource('sfx/intro_scene_swordSlice.wav'));

    animateScene();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushReplacementNamed('/login');
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _player.dispose();
    super.dispose();
  }

  void animateScene() async {
    // await _player.resume();
    await _controller.forward();
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: SizedBox(
            width: 118.5,
            height: 96,
            child: Image.asset('assets/images/intro_scene_webzen.png'),
          ),
        ),
      )
    );
  }
}
