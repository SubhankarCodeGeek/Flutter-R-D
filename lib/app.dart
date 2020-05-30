import 'package:coronaapp/screens/location_details/loaction_details.dart';
import 'package:coronaapp/style.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetails(),
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
