import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../screens/location_detail/image_banner.dart';
import '../locations_menu/locations_menu.dart';
import '../../app.dart';

class LocationsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('Trip Destinations'),
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) =>
              _itemBuilder(context, locations[index]),
        ));
  }

  Widget _itemBuilder(BuildContext context, Location location) {
    return GestureDetector(
      onTap: () => _onLocationTap(context, location.id),
      child: Container(
        height: 245.0,
        child: Stack(
          children: [
            ImageBanner(assetPath: location.imagePath, height: 245.0),
            //TileOverlay(location),
            Text(location.name),
          ],
        ),
      ),
    );
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute,
        arguments: {'id': locationID});
  }
}
