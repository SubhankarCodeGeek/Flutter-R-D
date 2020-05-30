import 'package:coronaapp/screens/location_details/loaction_details.dart';
import 'package:coronaapp/screens/locations/locations.dart';
import 'package:coronaapp/style.dart';
import 'package:flutter/material.dart';

const LocationRoute = '/';
const LocationDetailsRoute = '/location_details';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ,
      home: Locations(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        )
      ),
    );
  }
}
