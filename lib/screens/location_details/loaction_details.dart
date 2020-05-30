import 'package:coronaapp/model/location.dart';
import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_section.dart';

class LocationDetails extends StatelessWidget {
  final int _locationId;

  LocationDetails(this._locationId)

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchById(_locationId);

    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageBanner(location.imagePath),
          ]
            ..addAll(textSections(location)),
        ));
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
