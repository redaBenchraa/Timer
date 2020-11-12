import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:timer/routes/routes.gr.dart' as timer;
import 'package:timer/utils.dart';

import 'app_localization.dart';
import 'colors.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return Theme(
          data: ThemeData(
            fontFamily: AppTheme.railway,
            appBarTheme: Theme.of(context).appBarTheme.copyWith(
                  textTheme: const TextTheme(
                    headline6: TextStyle(
                        fontSize: 20,
                        color: AppTheme.white,
                        fontFamily: AppTheme.railway),
                  ),
                ),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primarySwatch: createMaterialColor(AppTheme.blue),
            primaryColor: AppTheme.blue,
            accentColor: AppTheme.white,
            disabledColor: AppTheme.grey,
            backgroundColor: AppTheme.lightGrey,
            errorColor: AppTheme.yellow,
            buttonColor: AppTheme.blue,
            buttonTheme: Theme.of(context).buttonTheme.copyWith(
                buttonColor: AppTheme.blue,
                padding: const EdgeInsets.only(top: 5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(
                    headline6: const TextStyle(
                        color: AppTheme.white, fontWeight: FontWeight.w600))
                .apply(
                    bodyColor: AppTheme.white,
                    displayColor: AppTheme.white,
                    fontFamily: AppTheme.railway),
            primaryIconTheme: Theme.of(context)
                .primaryIconTheme
                .copyWith(color: AppTheme.white),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              foregroundColor: Theme.of(context).primaryIconTheme.color,
            ),
          ),
          child: ExtendedNavigator(router: timer.Router()),
        );
      },
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
    );
  }
}
