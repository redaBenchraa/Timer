import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:timer/app_widget.dart';
import 'package:timer/injection/injection.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(AppWidget());
}
