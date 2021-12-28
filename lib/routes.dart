import 'package:flutter/widgets.dart';
import 'package:stroitelstore/screens/details/details_screen.dart';
import 'package:stroitelstore/screens/home/home_screen.dart';
import 'package:stroitelstore/screens/catalog/catalog_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CatalogScreen.routeName: (context) => CatalogScreen()
};
