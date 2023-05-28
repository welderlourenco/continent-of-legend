import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

Widget getContinentOfLegendLogoWidget() {
  return  Container(
    margin: const EdgeInsets.only(top: 20.0),
    width: double.infinity,
    height: 100,
    color: Colors.blueGrey,
    child: Center(
      child: Text('Continent of Legend', style: getFontStyle(30)),
    ),
  );
}