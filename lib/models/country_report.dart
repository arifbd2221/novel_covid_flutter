class CountryReport{
  final String country;
  final int states;
  final int confirmed;
  final int deaths;
  final int recovered;

  CountryReport({this.country,this.states,this.confirmed,this.deaths,this.recovered});

  CountryReport.fromCountryReport(this.country, this.states, this.confirmed, this.deaths, this.recovered);



  factory CountryReport.fromJson(Map<String, dynamic> json) {
    return CountryReport(
      country: json['country'],
      states: json['states'],
      confirmed: json['confirmed'],
      deaths: json['deaths'],
      recovered: json['recovered']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "country": this.country,
      "states": this.states,
      "confirmed": this.confirmed,
      "deaths": this.deaths,
      "recovered": this.recovered
    };
  }


}