/// A [Country] model represents an instance of a country which contains
/// information about the country
class Country {
  /// The name of the [Country]
  final String? name;

  /// The alpha 2 isoCode of the [Country]
  final String? alpha2Code;

  /// The alpha 3 isoCode of the [Country]
  final String? alpha3Code;

  /// The dialCode of the [Country]
  final String? dialCode;

  /// The flagUri which links to the flag for the [Country] in the library assets
  final String flagUri;

  /// The nameTranslation for translation
  final Map<String, String>? nameTranslations;

  Country({
    required this.name,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.dialCode,
    required this.flagUri,
    this.nameTranslations,
  });

  /// Convert [Countries.countryList] to [Country] model
  factory Country.fromJson(Map<String, dynamic> data) {
    return Country(
      name: data['en_short_name'].toString(),
      alpha2Code: data['alpha_2_code'].toString(),
      alpha3Code: data['alpha_3_code'].toString(),
      dialCode: data['dial_code'].toString(),
      flagUri: 'assets/flags/${data['alpha_2_code'].toLowerCase()}.png',
      nameTranslations: data['nameTranslations'] != null
          ? Map<String, String>.from(data['nameTranslations'] as Map<String, dynamic>)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is Country &&
        other.alpha2Code == alpha2Code &&
        other.alpha3Code == alpha3Code &&
        other.dialCode == dialCode;
  }

  @override
  int get hashCode => Object.hashAll([alpha2Code, alpha3Code, dialCode]);

  @override
  String toString() => '[Country] { '
      'name: $name, '
      'alpha2: $alpha2Code, '
      'alpha3: $alpha3Code, '
      'dialCode: $dialCode '
      '}';
}
