import 'package:client/helpers/font_style.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final VoidCallback onClick;

  const Button({
    super.key,
    required this.text,
    required this.onClick,
  });

  @override
  State createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isTapping = false;

  void onTapDown(details) {
    setState(() {
      isTapping = true;
    });
  }
  void onTapUp(details) {
    onTapCancel();
    widget.onClick();
  }
  void onTapCancel() {
    setState(() {
      isTapping = false;
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      child: Center(
        child: Text(
          widget.text,
          style: getFontStyle(25, color: isTapping ? Colors.white54 : Colors.white70)
        )
      )
    );
  }
}