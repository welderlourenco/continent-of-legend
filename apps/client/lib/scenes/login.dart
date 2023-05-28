import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:flutter/material.dart';

class LoginScene extends StatefulWidget {
  const LoginScene({super.key});

  @override
  State createState() => _LoginSceneState();
}

class _LoginSceneState extends State<LoginScene> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          getContinentOfLegendLogoWidget(),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: 'toq para logar (fake)',
                  onClick: () {
                    Navigator.of(context).pushNamed('/selectCharacter');
                  },
                ),
                Button(
                  text: 'toq para registrar (fake)',
                  onClick: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
