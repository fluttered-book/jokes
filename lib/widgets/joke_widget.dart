import 'package:flutter/material.dart';
import 'package:jokes/widgets/text_bubble.dart';

import '../joke_dto.dart';

class JokeWidget extends StatelessWidget {
  final JokeDto joke;
  const JokeWidget(this.joke, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: switch (joke.type) {
          "single" => TextBubble(joke.joke!),
          "twopart" => Column(children: [
              TextBubble(joke.setup!),
              const SizedBox(height: 24),
              TextBubble(joke.delivery!)
            ]),
          _ => const Text("Unknown joke type"),
        },
      ),
    );
  }
}
