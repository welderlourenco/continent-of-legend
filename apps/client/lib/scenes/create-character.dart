import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/components/square_button.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class CreateCharacterScene extends StatefulWidget {
  const CreateCharacterScene({super.key});

  @override
  State createState() => _CreateCharacterSceneState();
}

class _CreateCharacterSceneState extends State<CreateCharacterScene> {
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
              child: Text('escolha uma classe:', style: getFontStyle(20, color: Colors.white)),
            )
          ),

          Expanded(
            child: GridView.count(
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                SquareButton(
                  name: 'Knight',
                  level: 'hp: 110/mp: 30',
                  pos: 'alcançe: 1',
                  onClick: () {
                    Navigator.of(context).pushReplacementNamed('/selectCharacter');
                  },
                ),
                SquareButton(
                  name: 'Wizard',
                  level: 'hp: 60/mp: 60',
                  pos: 'alcançe: 3',
                  onClick: () {
                    Navigator.of(context).pushReplacementNamed('/selectCharacter');
                  },
                ),
              ],
            )
          ),
          
          Expanded(
            child: Button(
              text: 'toq para escolher personagem',
              onClick: () {},
            )
          ),
        ],
      ),
    );
  }
}
