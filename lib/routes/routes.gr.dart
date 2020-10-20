// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/create_timer/presentation/pages/new_timer_page.dart';
import '../features/home/presentation/pages/home_page.dart';

class Routes {
  static const String homePage = '/';
  static const String newTimerPage = '/new-timer-page';
  static const all = <String>{
    homePage,
    newTimerPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.newTimerPage, page: NewTimerPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    NewTimerPage: (data) {
      final args = data.getArgs<NewTimerPageArguments>(
        orElse: () => NewTimerPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewTimerPage(
          key: args.key,
          id: args.id,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushNewTimerPage({
    Key key,
    int id,
  }) =>
      push<dynamic>(
        Routes.newTimerPage,
        arguments: NewTimerPageArguments(key: key, id: id),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// NewTimerPage arguments holder class
class NewTimerPageArguments {
  final Key key;
  final int id;
  NewTimerPageArguments({this.key, this.id});
}
