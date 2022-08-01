import 'package:flutter/material.dart';
import 'package:housemanager/src/pages/house.dart';
import '../pages/home.dart';

final appRoutes = {
  '/': (context) => const HomePage(),
  '/house': (context) => const HousePage(),
};

//FUNCTIONS
class Routes {
  simple(context, String route) {
    return Navigator.pushNamed(context, route);
  }

  constructed(context, Widget route) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => route),
    );
  }
}
