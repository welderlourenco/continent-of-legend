import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/components/square_button.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class SelectCharacterScene extends StatefulWidget {
  const SelectCharacterScene({super.key});

  @override
  State createState() => _SelectCharacterSceneState();
}

class _SelectCharacterSceneState extends State<SelectCharacterScene> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          getContinentOfLegendLogoWidget(),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: Text('seus personagens (max 3):', style: getFontStyle(20, color: Colors.white)),
            )
          ),

          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                SquareButton(
                  name: 'Humanos',
                  level: 'level 176',
                  pos: 'Guild Master',
                  onClick: () { 
                    Navigator.of(context).pushNamed('/home');
                  }
                ),
                SquareButton(
                  name: 'asdasd',
                  level: 'level 1',
                  pos: 'Commoner',
                  onClick: () { 
                    Navigator.of(context).pushNamed('/home');
                  }
                ),
              ],
            )
          ),

          Expanded(
            child: Button(
              text: 'toq para criar personagem',
              onClick: () {
                Navigator.of(context).pushReplacementNamed('/createCharacter');
              },
            )
          ),
        ]
      ),
    );
  }
}
