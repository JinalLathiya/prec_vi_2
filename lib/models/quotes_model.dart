class Quotes {
  int? id;
  String? quote;

  Quotes({
    this.id,
    required this.quote,
  });

  factory Quotes.fromMap(Map<String, dynamic> data) {
    return Quotes(
      id: data['id'],
      quote: data['quote'],
    );
  }
}
