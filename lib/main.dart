import 'package:flutter/material.dart';
import 'package:fulltoken/utils/Constants.dart';
import 'package:fulltoken/utils/Strings.dart';
import 'package:fulltoken/widgets/HomeWidget.dart';
import 'package:fulltoken/widgets/LoginWidget.dart';


void main() => runApp(new MyApp());
//
//final routes = {
//  ROUTE_LOGIN: (BuildContext context) => new LoginPage(),
//  ROUTE_HOME: (BuildContext context) => new HomePage(""),
//  '/': (BuildContext context) => new LoginPage(),
//};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: Strings.app_name,
      onGenerateRoute: _getRoute,
      theme: new ThemeData(primarySwatch: Colors.teal),
//      routes: routes,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_HOME:
        return _buildRoute(settings, new HomePage(settings.arguments));
      case ROUTE_LOGIN:
        return _buildRoute(settings, LoginPage());
      default:
        return _buildRoute(settings, LoginPage());
    }
  }

  MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
    return new MaterialPageRoute(
      settings: settings,
      builder: (ctx) => builder,
    );
  }
}
