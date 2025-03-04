import 'package:flutter/widgets.dart';
import 'package:jokes/joke_dto.dart';

@immutable
sealed class JokeState {}

final class JokeInitial extends JokeState {}

final class JokeLoading extends JokeState {}

final class JokeLoaded extends JokeState {
  final JokeDto joke;
  JokeLoaded(this.joke);
}

final class JokeError extends JokeState {
  final String message;
  JokeError(this.message);
}
