import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class RewardScene extends StatefulWidget {
  const RewardScene({super.key});

  @override
  State createState() => _RewardSceneState();
}

class _RewardSceneState extends State<RewardScene> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          getContinentOfLegendLogoWidget(),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('sua recompensa:', style: getFontStyle(20, color: Colors.white)),
                Text('Small Axe +5', style: getFontStyle(20, color: Colors.blue.shade400),),
              ],
            )
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('stats da batalha:', style: getFontStyle(20, color: Colors.white)),
                Text('experience +588', style: getFontStyle(20, color: Colors.blue.shade300),),
                Text('golds +788', style: getFontStyle(20, color: Colors.yellow.shade400),),
              ],
            )
          ),

          Expanded(
            child: Button(
              text: 'toq para ir para home',
              onClick: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
