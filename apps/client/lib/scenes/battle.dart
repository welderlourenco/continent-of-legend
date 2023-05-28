import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/components/square_button.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class BattleScene extends StatefulWidget {
  const BattleScene({super.key});

  @override
  State createState() => _BattleSceneState();
}

class _BattleSceneState extends State<BattleScene> {
  @override
  Widget build(BuildContext ctx) {
        return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          getContinentOfLegendLogoWidget(),

          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 8, bottom: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lorencia', style: getFontStyle(15, color: Colors.white)),
                Text('monsters: - - - - - - -', style: getFontStyle(15, color: Colors.white)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Level: 1', style: getFontStyle(15, color: Colors.white)),
                Text('experience: 0/100', style: getFontStyle(15, color: Colors.white)),
                Text('Golds: 5', style: getFontStyle(15, color: Colors.yellow.shade600)),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('hp/mp: 110/30', style: getFontStyle(15, color: Colors.white)),
                Text('dmg inc: 100%', style: getFontStyle(15, color: Colors.white)),
                Text('def inc: 0%', style: getFontStyle(15, color: Colors.white)),
              ],
            ),
          ),

          Expanded(
            child: Placeholder(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/reward');
                },
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,
            height: 140,
              child: GridView.count(
                primary: false,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[
                  SquareButton(
                    name: 'Another Axe',
                    level: '(30g) dmg: 8~18',
                    pos: 'range: 1/aoe: 0',
                    onClick: () {},
                  ),
                  SquareButton(
                    name: 'Small Axe',
                    level: '(10g) dmg: 8~18',
                    pos: 'range: 1/aoe: 0',
                    onClick: () {},
                  ),
                  SquareButton(
                    name: 'Cyclone (66g)',
                    level: 'dmg inc: 150%',
                    pos: '(support)',
                    onClick: () {},
                  ),
                ],
              )
            ),
        ],
      ),
    );
  }
}
