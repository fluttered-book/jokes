// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'joke_dto.dart';

class JokeDtoMapper extends ClassMapperBase<JokeDto> {
  JokeDtoMapper._();

  static JokeDtoMapper? _instance;
  static JokeDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JokeDtoMapper._());
      FlagsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JokeDto';

  static bool? _$error(JokeDto v) => v.error;
  static const Field<JokeDto, bool> _f$error =
      Field('error', _$error, opt: true);
  static String? _$category(JokeDto v) => v.category;
  static const Field<JokeDto, String> _f$category =
      Field('category', _$category, opt: true);
  static String? _$type(JokeDto v) => v.type;
  static const Field<JokeDto, String> _f$type =
      Field('type', _$type, opt: true);
  static String? _$setup(JokeDto v) => v.setup;
  static const Field<JokeDto, String> _f$setup =
      Field('setup', _$setup, opt: true);
  static String? _$delivery(JokeDto v) => v.delivery;
  static const Field<JokeDto, String> _f$delivery =
      Field('delivery', _$delivery, opt: true);
  static String? _$joke(JokeDto v) => v.joke;
  static const Field<JokeDto, String> _f$joke =
      Field('joke', _$joke, opt: true);
  static Flags? _$flags(JokeDto v) => v.flags;
  static const Field<JokeDto, Flags> _f$flags =
      Field('flags', _$flags, opt: true);
  static int? _$id(JokeDto v) => v.id;
  static const Field<JokeDto, int> _f$id = Field('id', _$id, opt: true);
  static bool? _$safe(JokeDto v) => v.safe;
  static const Field<JokeDto, bool> _f$safe = Field('safe', _$safe, opt: true);
  static String? _$lang(JokeDto v) => v.lang;
  static const Field<JokeDto, String> _f$lang =
      Field('lang', _$lang, opt: true);

  @override
  final MappableFields<JokeDto> fields = const {
    #error: _f$error,
    #category: _f$category,
    #type: _f$type,
    #setup: _f$setup,
    #delivery: _f$delivery,
    #joke: _f$joke,
    #flags: _f$flags,
    #id: _f$id,
    #safe: _f$safe,
    #lang: _f$lang,
  };

  static JokeDto _instantiate(DecodingData data) {
    return JokeDto(
        error: data.dec(_f$error),
        category: data.dec(_f$category),
        type: data.dec(_f$type),
        setup: data.dec(_f$setup),
        delivery: data.dec(_f$delivery),
        joke: data.dec(_f$joke),
        flags: data.dec(_f$flags),
        id: data.dec(_f$id),
        safe: data.dec(_f$safe),
        lang: data.dec(_f$lang));
  }

  @override
  final Function instantiate = _instantiate;

  static JokeDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JokeDto>(map);
  }

  static JokeDto fromJson(String json) {
    return ensureInitialized().decodeJson<JokeDto>(json);
  }
}

mixin JokeDtoMappable {
  String toJson() {
    return JokeDtoMapper.ensureInitialized()
        .encodeJson<JokeDto>(this as JokeDto);
  }

  Map<String, dynamic> toMap() {
    return JokeDtoMapper.ensureInitialized()
        .encodeMap<JokeDto>(this as JokeDto);
  }

  JokeDtoCopyWith<JokeDto, JokeDto, JokeDto> get copyWith =>
      _JokeDtoCopyWithImpl(this as JokeDto, $identity, $identity);
  @override
  String toString() {
    return JokeDtoMapper.ensureInitialized().stringifyValue(this as JokeDto);
  }

  @override
  bool operator ==(Object other) {
    return JokeDtoMapper.ensureInitialized()
        .equalsValue(this as JokeDto, other);
  }

  @override
  int get hashCode {
    return JokeDtoMapper.ensureInitialized().hashValue(this as JokeDto);
  }
}

extension JokeDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, JokeDto, $Out> {
  JokeDtoCopyWith<$R, JokeDto, $Out> get $asJokeDto =>
      $base.as((v, t, t2) => _JokeDtoCopyWithImpl(v, t, t2));
}

abstract class JokeDtoCopyWith<$R, $In extends JokeDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  FlagsCopyWith<$R, Flags, Flags>? get flags;
  $R call(
      {bool? error,
      String? category,
      String? type,
      String? setup,
      String? delivery,
      String? joke,
      Flags? flags,
      int? id,
      bool? safe,
      String? lang});
  JokeDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _JokeDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JokeDto, $Out>
    implements JokeDtoCopyWith<$R, JokeDto, $Out> {
  _JokeDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JokeDto> $mapper =
      JokeDtoMapper.ensureInitialized();
  @override
  FlagsCopyWith<$R, Flags, Flags>? get flags =>
      $value.flags?.copyWith.$chain((v) => call(flags: v));
  @override
  $R call(
          {Object? error = $none,
          Object? category = $none,
          Object? type = $none,
          Object? setup = $none,
          Object? delivery = $none,
          Object? joke = $none,
          Object? flags = $none,
          Object? id = $none,
          Object? safe = $none,
          Object? lang = $none}) =>
      $apply(FieldCopyWithData({
        if (error != $none) #error: error,
        if (category != $none) #category: category,
        if (type != $none) #type: type,
        if (setup != $none) #setup: setup,
        if (delivery != $none) #delivery: delivery,
        if (joke != $none) #joke: joke,
        if (flags != $none) #flags: flags,
        if (id != $none) #id: id,
        if (safe != $none) #safe: safe,
        if (lang != $none) #lang: lang
      }));
  @override
  JokeDto $make(CopyWithData data) => JokeDto(
      error: data.get(#error, or: $value.error),
      category: data.get(#category, or: $value.category),
      type: data.get(#type, or: $value.type),
      setup: data.get(#setup, or: $value.setup),
      delivery: data.get(#delivery, or: $value.delivery),
      joke: data.get(#joke, or: $value.joke),
      flags: data.get(#flags, or: $value.flags),
      id: data.get(#id, or: $value.id),
      safe: data.get(#safe, or: $value.safe),
      lang: data.get(#lang, or: $value.lang));

  @override
  JokeDtoCopyWith<$R2, JokeDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JokeDtoCopyWithImpl($value, $cast, t);
}

class FlagsMapper extends ClassMapperBase<Flags> {
  FlagsMapper._();

  static FlagsMapper? _instance;
  static FlagsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FlagsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Flags';

  static bool? _$nsfw(Flags v) => v.nsfw;
  static const Field<Flags, bool> _f$nsfw = Field('nsfw', _$nsfw, opt: true);
  static bool? _$religious(Flags v) => v.religious;
  static const Field<Flags, bool> _f$religious =
      Field('religious', _$religious, opt: true);
  static bool? _$political(Flags v) => v.political;
  static const Field<Flags, bool> _f$political =
      Field('political', _$political, opt: true);
  static bool? _$racist(Flags v) => v.racist;
  static const Field<Flags, bool> _f$racist =
      Field('racist', _$racist, opt: true);
  static bool? _$sexist(Flags v) => v.sexist;
  static const Field<Flags, bool> _f$sexist =
      Field('sexist', _$sexist, opt: true);
  static bool? _$explicit(Flags v) => v.explicit;
  static const Field<Flags, bool> _f$explicit =
      Field('explicit', _$explicit, opt: true);

  @override
  final MappableFields<Flags> fields = const {
    #nsfw: _f$nsfw,
    #religious: _f$religious,
    #political: _f$political,
    #racist: _f$racist,
    #sexist: _f$sexist,
    #explicit: _f$explicit,
  };

  static Flags _instantiate(DecodingData data) {
    return Flags(
        nsfw: data.dec(_f$nsfw),
        religious: data.dec(_f$religious),
        political: data.dec(_f$political),
        racist: data.dec(_f$racist),
        sexist: data.dec(_f$sexist),
        explicit: data.dec(_f$explicit));
  }

  @override
  final Function instantiate = _instantiate;

  static Flags fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Flags>(map);
  }

  static Flags fromJson(String json) {
    return ensureInitialized().decodeJson<Flags>(json);
  }
}

mixin FlagsMappable {
  String toJson() {
    return FlagsMapper.ensureInitialized().encodeJson<Flags>(this as Flags);
  }

  Map<String, dynamic> toMap() {
    return FlagsMapper.ensureInitialized().encodeMap<Flags>(this as Flags);
  }

  FlagsCopyWith<Flags, Flags, Flags> get copyWith =>
      _FlagsCopyWithImpl(this as Flags, $identity, $identity);
  @override
  String toString() {
    return FlagsMapper.ensureInitialized().stringifyValue(this as Flags);
  }

  @override
  bool operator ==(Object other) {
    return FlagsMapper.ensureInitialized().equalsValue(this as Flags, other);
  }

  @override
  int get hashCode {
    return FlagsMapper.ensureInitialized().hashValue(this as Flags);
  }
}

extension FlagsValueCopy<$R, $Out> on ObjectCopyWith<$R, Flags, $Out> {
  FlagsCopyWith<$R, Flags, $Out> get $asFlags =>
      $base.as((v, t, t2) => _FlagsCopyWithImpl(v, t, t2));
}

abstract class FlagsCopyWith<$R, $In extends Flags, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? nsfw,
      bool? religious,
      bool? political,
      bool? racist,
      bool? sexist,
      bool? explicit});
  FlagsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FlagsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Flags, $Out>
    implements FlagsCopyWith<$R, Flags, $Out> {
  _FlagsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Flags> $mapper = FlagsMapper.ensureInitialized();
  @override
  $R call(
          {Object? nsfw = $none,
          Object? religious = $none,
          Object? political = $none,
          Object? racist = $none,
          Object? sexist = $none,
          Object? explicit = $none}) =>
      $apply(FieldCopyWithData({
        if (nsfw != $none) #nsfw: nsfw,
        if (religious != $none) #religious: religious,
        if (political != $none) #political: political,
        if (racist != $none) #racist: racist,
        if (sexist != $none) #sexist: sexist,
        if (explicit != $none) #explicit: explicit
      }));
  @override
  Flags $make(CopyWithData data) => Flags(
      nsfw: data.get(#nsfw, or: $value.nsfw),
      religious: data.get(#religious, or: $value.religious),
      political: data.get(#political, or: $value.political),
      racist: data.get(#racist, or: $value.racist),
      sexist: data.get(#sexist, or: $value.sexist),
      explicit: data.get(#explicit, or: $value.explicit));

  @override
  FlagsCopyWith<$R2, Flags, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FlagsCopyWithImpl($value, $cast, t);
}
