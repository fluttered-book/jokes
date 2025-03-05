import 'package:flutter/material.dart';

class TextBubble extends StatelessWidget {
  final String text;
  const TextBubble(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = Theme.of(context).textTheme.headlineSmall?.fontSize;
    return PhysicalModel(
      color: Colors.purple,
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(text,
            style: TextStyle(fontSize: fontSize, color: Colors.white)),
      ),
    );
  }
}
