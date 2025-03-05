import 'package:dart_mappable/dart_mappable.dart';

part 'joke_dto.mapper.dart';

@MappableClass()
class JokeDto with JokeDtoMappable {
  bool? error;
  String? category;
  String? type;
  String? setup;
  String? delivery;
  String? joke;
  Flags? flags;
  int? id;
  bool? safe;
  String? lang;

  JokeDto(
      {this.error,
      this.category,
      this.type,
      this.setup,
      this.delivery,
      this.joke,
      this.flags,
      this.id,
      this.safe,
      this.lang});
}

@MappableClass()
class Flags with FlagsMappable {
  bool? nsfw;
  bool? religious;
  bool? political;
  bool? racist;
  bool? sexist;
  bool? explicit;

  Flags(
      {this.nsfw,
      this.religious,
      this.political,
      this.racist,
      this.sexist,
      this.explicit});
}
