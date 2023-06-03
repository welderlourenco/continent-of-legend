import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class StatScene extends StatefulWidget {
  const StatScene({super.key});

  @override
  State createState() => _StatSceneState();
}

class _StatSceneState extends State<StatScene> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          getContinentOfLegendLogoWidget(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Golds: 899', style: getFontStyle(15, color: Colors.yellow.shade600)),
                Text('pontos dist: 5/5', style: getFontStyle(15, color: Colors.yellow.shade600)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Level: 176', style: getFontStyle(15, color: Colors.white)),
                Text('exp: 44484864/108005845', style: getFontStyle(15, color: Colors.white)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('HP/MP: 770/301', style: getFontStyle(15, color: Colors.white)),
              ],
            ),
          ),
          
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('curar pj', style: getFontStyle(20, color: Colors.purple.shade600)),
                Text('100g', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Button(
                  text: 'curar',
                  onClick: () {
                  },
                ),
              ],
            )
          ),

          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('força: 28 (dmg base: 1~4)', style: getFontStyle(13, color: Colors.purple.shade600)),
                Button(
                  text: '+1 força',
                  onClick: () {
                  },
                ),
                Text('', style: getFontStyle(13, color: Colors.purple.shade600)),
                Text('defese: 20 (def base: 1)', style: getFontStyle(13, color: Colors.purple.shade600)),
                Button(
                  text: '+1 defesa',
                  onClick: () {
                  },
                ),
                Text('', style: getFontStyle(13, color: Colors.purple.shade600)),
                Text('energia: 10 (dmg inc: 100%)', style: getFontStyle(13, color: Colors.purple.shade600)),
                Button(
                  text: '+1 energia',
                  onClick: () {
                  },
                ),
              ],
            )
          ),

          Expanded(
            child: Button(
              text: 'toq para voltar para home',
              onClick: () {
                Navigator.of(context).pushNamed('/home');
              },
            )
          ),
        ],
      ),
    );
  }
}
