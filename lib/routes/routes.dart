import 'package:auto_route/auto_route_annotations.dart';
import 'package:timer/features/create_timer/presentation/pages/new_timer_page.dart';
import 'package:timer/features/home/presentation/pages/home_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: HomePage, initial: true),
      MaterialRoute(page: NewTimerPage),
    ])
class $Router {}
