import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/core/joke_cubit.dart';
import 'package:jokes/core/joke_state.dart';
import 'package:jokes/data_source.dart';

import 'joke_dto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<JokeCubit>(
      create: (_) => JokeCubit(dataSource: DataSource()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const JokesPage(),
      ),
    );
  }
}

class JokesPage extends StatelessWidget {
  const JokesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jokes")),
      body: BlocBuilder<JokeCubit, JokeState>(
        builder: (context, state) {
          return Column(
            children: [
              switch (state) {
                JokeInitial() => Text("Wan't to hear a joke?"),
                JokeLoading() => CircularProgressIndicator(),
                JokeLoaded() => JokeWidget(state.joke),
                JokeError() => Text(
                    state.message,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
              },
              TextButton(
                onPressed: () => context.read<JokeCubit>().loadNewJoke(),
                child: Text(state is JokeInitial ? "Yes" : "Another"),
              ),
            ],
          );
        },
      ),
    );
  }
}

class JokeWidget extends StatelessWidget {
  final JokeDto joke;
  const JokeWidget(this.joke, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (joke.joke != null) Text(joke.joke!),
        if (joke.setup != null) Text(joke.setup!),
        if (joke.delivery != null) Text(joke.delivery!)
      ],
    );
  }
}
