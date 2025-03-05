import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/pages/settings_page.dart';

import '../core/joke_cubit.dart';
import '../core/joke_state.dart';
import '../widgets/joke_widget.dart';

class JokesPage extends StatelessWidget {
  const JokesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokes"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SettingsPage(),
                  ),
                );
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: BlocBuilder<JokeCubit, JokeState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: switch (state) {
                  JokeInitial() => Text("Want to hear a joke?",
                      style: Theme.of(context).textTheme.headlineMedium),
                  JokeLoading() => Center(child: CircularProgressIndicator()),
                  JokeLoaded() => JokeWidget(state.joke),
                  JokeError() => Text(
                      state.message,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                },
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: ElevatedButton(
                    onPressed: () => context.read<JokeCubit>().loadNewJoke(),
                    child: Text(
                      state is JokeInitial ? "Yes" : "Another",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
