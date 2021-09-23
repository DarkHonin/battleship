import 'package:battleship/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:battleship/views/home_view.dart';
import 'package:battleship/views/join_view.dart';

class Navigation {
  static const HOME_VIEW = "/";
  static const JOIN_VIEW = "/join";

  static Route<RouteSettings> _genRoute(Widget item) {
    return MaterialPageRoute(builder: (c) => item);
  }

  static Route<RouteSettings> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HOME_VIEW:
        return _genRoute(HomeView());
      case JOIN_VIEW:
        return _genRoute(JoinView());
    }
    return _genRoute(Container());
  }
}
