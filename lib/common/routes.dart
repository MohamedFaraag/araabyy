import 'package:arabyy/ui/Login.dart';
import 'package:arabyy/ui/home.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  Login.routeName: (context) => Login()
};
