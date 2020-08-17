import 'package:coronaapp/screens/location_details/loaction_details.dart';
import 'package:coronaapp/screens/locations/locations.dart';
import 'package:coronaapp/screens/splash/splash.dart';
import 'package:coronaapp/style.dart';
import 'package:flutter/material.dart';

const SplashRoute = '/';
const LocationRoute = '/locations';
const LocationDetailsRoute = '/location_details';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      home: Splash(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case SplashRoute:
          screen = Splash();
          break;

        case LocationRoute:
          screen = Locations();
          break;

        case LocationDetailsRoute:
          screen = LocationDetails(arguments['id']);
          break;

        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,
        ));
  }
}
