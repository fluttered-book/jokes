import 'dart:convert';
import 'package:flutter/foundation.dart' show kDebugMode, debugPrint;
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:http/http.dart' as http;
import 'package:jokes/models/settings.dart';

import 'models/joke_dto.dart';

class DataSource {
  Future<JokeDto> getJoke() async {
    final categories = Category.values
        .where((category) =>
            Settings.getValue<bool>(category.key, defaultValue: false)!)
        .map((category) => category.name);
    final blacklistFlags = BlacklistFlag.values
        .where((flag) => Settings.getValue<bool>(flag.key, defaultValue: true)!)
        .map((flag) => flag.name.toLowerCase());
    final url = Uri(
      scheme: 'https',
      host: 'v2.jokeapi.dev',
      pathSegments: [
        'joke',
        if (categories.isNotEmpty) categories.join(",") else "Any",
      ],
      query: blacklistFlags.isNotEmpty
          ? "blacklistFlags=${blacklistFlags.join(",")}"
          : null,
    );
    if (kDebugMode) debugPrint(url.toString());
    final response = await http.get(url);
    return JokeDtoMapper.fromJson(response.body);
  }
}
