class Country {
  final String name;
  final String flag;
  final String capital;
  final int population;

  Country({
    required this.name,
    required this.flag,
    required this.capital,
    required this.population,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']['common'],
      flag: json['flags']['png'],
      capital: json['capital'] != null ? json['capital'][0] : "No Capital",
      population: json['population'],
    );
  }
}
