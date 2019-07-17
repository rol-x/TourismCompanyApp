import './location_fact.dart';
import 'package:meta/meta.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final String tourSchedule;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    @required this.id,
    @required this.name,
    @required this.imagePath,
    this.tourSchedule,
    @required this.tourPackageName,
    @required this.facts,
  });

  static List<Location> fetchAll() {
    return [
      Location(
        id: 1,
        name: 'Yosemite National Park - California',
        imagePath: 'assets/images/yosemite_national_park.jpeg',
        tourSchedule: "Day 1: 9PM - 2:30PM",
        tourPackageName: "American Hero Package",
        facts: [
          LocationFact('Summary',
              'Yosemite National Park, created in 1890, is one of the oldest nature preserves in the United States. A wonderland of geological formations and biological diversity, the park spans nearly 1,200 square miles on the western slope of the Sierra Nevada range in central eastern California. More than 3 million visitors each year flock to see Yosemite’s grandeur. It was designated as a UNESCO World Heritage Site in 1984.'),
          LocationFact('How to Get There',
              'Public transportation from Fresno to Yosemite is available via the Yosemite Area Regional Transit System (YARTS). San Francisco International Airport (SFO) - 2 ½ hours to Big Oak Flat entrance via Highway CA 120, 3 ½ hours to heart of Yosemite Valley. 4-5 hours to Tuolumne Meadows.'),
        ],
      ),
      Location(
        id: 2,
        name: 'Maroon Lake - Colorado',
        imagePath: 'assets/images/maroon_lake.jpeg',
        tourSchedule: "Day 3: 10AM - 1:30PM",
        tourPackageName: "Exclusive Package",
        facts: [
          LocationFact('Summary',
              'This exquisite place in its outstanding glory is a formidable edifice for the natural jewels of Colorado.'),
          LocationFact('Exclusive offer',
              'Our exceptional trip offers you more than just a destination. Breathtaking landscapes and picturesque forests - all encompassed by harmonic flora and fauna of the wildlife of America - are just the beginning.'),
        ],
      ),
      Location(
        id: 3,
        name: 'Golden Gate Bridge - California',
        imagePath: 'assets/images/golden_gate_bridge.jpeg',
        tourSchedule: "Day 1: 6PM - 7:30PM",
        tourPackageName: "Standard Package",
        facts: [
          LocationFact('Summary',
              'The Golden Gate Bridge is a technical masterpiece that can only be described in superlative terms. When the bridge was completed in 1937 it was the world\'s longest and tallest suspension bridge. But above all this masterly example of engineering is a magnificent monument set against a beautiful backdrop.'),
          LocationFact('How to Get There',
              'The Golden Gate Bridge is located at the Presidio Park and can easily be reached by bus or car. The most pleasant way to reach the bridge however is by walking either from the Marina District to the east or from Baker Beach to the west of the bridge. Both routes will lead you through a park, and especially the route along the east is very popular.'),
        ],
      ),
      Location(
          id: 4,
          name: 'Zion National Park - Utah',
          imagePath: 'assets/images/zion_national_park.jpeg',
          tourSchedule: "Day 2: 1:30PM - 5PM",
          tourPackageName: "American Hero Package",
          facts: [
            LocationFact('Summary',
                'Protected within Zion National Park\'s 229 square miles is a spectacular cliff-and-canyon landscape and wilderness full of the unexpected, including the world\'s largest arch, Kolob Arch, with a span that measures 310 feet. Wildlife such as Mule Deer, Golden Eagles and Mountain Lions also inhabit the Park.'),
            LocationFact('How to Get There',
                'When traveling to Zion National Park by plane, you have the option to land in two major cities: Las Vegas which is 170 miles from the park, and Salt Lake City which is 311 miles from the park. If you fly into Salt Lake City you can take a connecting flight into Saint George, Utah or Cedar City, Utah. Saint George is just 49 miles from the park, and Cedar City is 60 miles from the park.'),
          ]),
    ];
  }

  static Location fetchByID(int locationID) {
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
