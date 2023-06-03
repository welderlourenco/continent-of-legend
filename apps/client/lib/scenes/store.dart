import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class StoreScene extends StatefulWidget {
  const StoreScene({super.key});

  @override
  State createState() => _StoreSceneState();
}

class _StoreSceneState extends State<StoreScene> {
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
                // Text('Level: 176', style: getFontStyle(15, color: Colors.white)),
                // Text('HP/MP: 110/30', style: getFontStyle(15, color: Colors.white)),
                Text('Golds: 899', style: getFontStyle(15, color: Colors.yellow.shade600)),
              ],
            ),
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('carta do dia: Bless', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Text('2000g', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Button(
                  text: 'comprar',
                  onClick: () {
                  },
                ),
              ],
            )
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('pack com 5 cartas', style: getFontStyle(20, color: Colors.purple.shade600)),
                Text('1000g', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Button(
                  text: 'comprar',
                  onClick: () {
                  },
                ),
              ],
            )
          ),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('lvl up points', style: getFontStyle(20, color: Colors.yellow.shade100)),
                Text('5/5 disp. para compra', style: getFontStyle(13, color: Colors.yellow.shade100)),
                Text('200g', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Button(
                  text: 'comprar',
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
