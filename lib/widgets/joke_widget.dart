import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jokes/widgets/text_bubble.dart';

import '../models/joke_dto.dart';

class JokeWidget extends StatelessWidget {
  final JokeDto joke;
  const JokeWidget(this.joke, {super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            SizedBox(
              height: height / 2,
              child: SvgPicture.network(
                  fit: BoxFit.contain,
                  "https://api.dicebear.com/7.x/adventurer/svg?seed=${joke.id}"),
            ),
            const SizedBox(height: 24),
            switch (joke.type) {
              "single" => TextBubble(joke.joke!),
              "twopart" => Column(children: [
                  TextBubble(joke.setup!),
                  const SizedBox(height: 24),
                  TextBubble(joke.delivery!)
                ]),
              _ => const Text("Unknown joke type"),
            },
          ],
        ),
      ),
    );
  }
}
