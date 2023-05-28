import 'package:client/components/button.dart';
import 'package:client/components/continent_of_legend_logo.dart';
import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class MapObject {
  final String name;
  final int count;
  final bool locked;

  MapObject(this.name, this.count, this.locked);
}

Widget renderMap({required VoidCallback onClick, required MapObject mapObj, required BuildContext context}) {
  final List<Text> textList = [
    Text(mapObj.name, style: getFontStyle(30, color: Colors.white),),
    Text(!mapObj.locked ? 'vezes jogado: ${mapObj.count.toString()}' : '(locked)', style: getFontStyle(13, color: Colors.white),)
  ];

  if (!mapObj.locked) {
    textList.add(Text('clique para jogar', style: getFontStyle(13, color: Colors.white)));
  }

  return GestureDetector(
    onTap: () {
      onClick();
    },
    child: Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: textList,
      )
    ),
  );
}

class HomeScene extends StatefulWidget {
  const HomeScene({super.key});

  @override
  State createState() => _HomeSceneState();
}

class _HomeSceneState extends State<HomeScene> {
  final List<MapObject> _maps = [
    MapObject('Lorencia', 3, false),
    MapObject('Dungeon', 0, true),
    MapObject('Devias', 0, true),
  ];

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          getContinentOfLegendLogoWidget(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Level: 176', style: getFontStyle(15, color: Colors.white)),
                Text('HP/MP: 110/30', style: getFontStyle(15, color: Colors.white)),
                Text('Golds: 899', style: getFontStyle(15, color: Colors.yellow.shade600)),
              ],
            ),
          ),
          
          Expanded(
            flex: 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _maps.length,
              itemBuilder: (context, index) {
                return renderMap(mapObj: _maps[index], context: context, onClick: () {
                  Navigator.of(context).pushNamed('/pre-battle');
                });
              }
            ),
          ),
          
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: 'loja',
                  onClick: () {
                    Navigator.of(context).pushNamed('/store');
                  },
                ),
                Button(
                  text: 'coleção',
                  onClick: () {
                    Navigator.of(context).pushNamed('/collection');
                  },
                ),
                Button(
                  text: 'stats',
                  onClick: () {
                    Navigator.of(context).pushNamed('/stat');
                  },
                ),
                Button(
                  text: 'eventos',
                  onClick: () {
                    Navigator.of(context).pushNamed('/events');
                  },
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}
