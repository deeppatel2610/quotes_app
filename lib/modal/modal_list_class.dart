class Quotes {
  late String quote, author;

  Quotes(this.author, this.quote);

  factory Quotes.fromMap(Map m1) {
    return Quotes(m1['author'], m1['quote']);
  }
}
