import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class EventsScene extends StatefulWidget {
  const EventsScene({super.key});

  @override
  State createState() => _EventsSceneState();
}

class _EventsSceneState extends State<EventsScene> {
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
                Text('monsters x3', style: getFontStyle(20, color: Colors.purple.shade600)),
                Text('100g', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Button(
                  text: 'entrar',
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
                Text('white wizard', style: getFontStyle(20, color: Colors.purple.shade600)),
                Text('encerra em: 12h', style: getFontStyle(20, color: Colors.white)),
                Text('200g', style: getFontStyle(20, color: Colors.yellow.shade600)),
                Button(
                  text: 'entrar',
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
