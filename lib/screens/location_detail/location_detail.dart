import 'package:flutter/material.dart';
import '../../models/location.dart';
import 'text_section.dart';
import 'image_banner.dart';
import 'package:sticky_headers/sticky_headers.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchByID(_locationID);
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: ListView(children: [
          StickyHeader(
            header: ImageBanner(assetPath: location.imagePath, height: 245.0),
            content: Column(
              children: textSections(location),
            ),
          ),
        ]));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
