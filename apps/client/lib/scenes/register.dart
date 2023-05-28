import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class RegisterScene extends StatefulWidget {
  const RegisterScene({super.key});

  @override
  State createState() => _RegisterSceneState();
}

class _RegisterSceneState extends State<RegisterScene> {
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
                Text('Nome: Welder', style: getFontStyle(16, color: Colors.white)),
                Text('Email: welder@email.com', style: getFontStyle(16, color: Colors.white)),
                Text('Password: teletubes', style: getFontStyle(16, color: Colors.white)),
                Text('', style: getFontStyle(16, color: Colors.white)),
                Button(
                  text: 'toq para registrar (fake)',
                  onClick: () {
                    Navigator.of(context).pushReplacementNamed('/login');
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
