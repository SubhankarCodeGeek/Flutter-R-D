import 'location_fact.dart';

class Location {
  int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchById(int locationId) {
    //fetch all locations, iterate them and when we find the location
    //with the ID we want, return it immediately
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(
          1, 'Araashiya Bamboo Grove', 'assets/images/japanese_streets.jpg', [
        LocationFact('Summary',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'),
        LocationFact(
            'How to get there',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'
                ',While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer')
      ]),
      Location(2, 'Mount Fuji', 'assets/images/mount_fuji_1.jpg', [
        LocationFact('Summary',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'),
        LocationFact(
            'How to get there',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'
                ',While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer')
      ]),
      Location(2, 'Mount Fuji on Night', 'assets/images/mount_fuji_2.jpg', [
        LocationFact('Summary',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'),
        LocationFact(
            'How to get there',
            'While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer'
                ',While we go on abount the ethereal glow and seemingly endless heights of the this bamboo grove on the outer')
      ])
    ];
  }
}
