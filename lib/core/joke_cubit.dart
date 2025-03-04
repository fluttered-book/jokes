import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jokes/data_source.dart';

import 'joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  final DataSource dataSource;

  JokeCubit({required this.dataSource}) : super(JokeInitial());

  Future<void> loadNewJoke() async {
    emit(JokeLoading());
    try {
      final joke = await dataSource.getJoke();
      emit(JokeLoaded(joke));
    } catch (e) {
      emit(JokeError(e.toString()));
    }
  }
}
