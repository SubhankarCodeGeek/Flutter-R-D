import 'location_fact.dart';

class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location('Araashiya Bamboo Grove', 'assets/images/japanese_streets.jpg', [
        LocationFact('Summary',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'),
        LocationFact('How to get there',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'',While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer')
      ])
    ];
  }
}
