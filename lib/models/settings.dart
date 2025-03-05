enum BlacklistFlag {
  NSFW,
  Religious,
  Political,
  Racist,
  Sexist,
  Explicit;

  String get key => 'blacklist-${name.toLowerCase()}';
}

enum Category {
  Programming,
  Miscellaneous,
  Dark,
  Pun,
  Spooky,
  Christmas;

  String get key => 'category-${name.toLowerCase()}';

  Set<Category> get any => Category.values.toSet();
}
