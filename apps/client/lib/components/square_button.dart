import 'package:flutter/material.dart';

class SquareButton extends StatefulWidget {
  final String name;
  final String level;
  final String pos;
  final VoidCallback onClick;

  const SquareButton({
    super.key,
    required this.name,
    required this.level,
    required this.pos,
    required this.onClick,
  });

  @override
  State createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
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
      child: Container(
        color: Colors.teal[isTapping ? 300 : widget.pos == 'Guild Master' ? 200 : 100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.name),
            Text(widget.level),
            Text(widget.pos)
          ]
        ),
      )
    );
  }
}