import 'package:demo01/pages/tabs/car_page.dart';
import 'package:demo01/pages/tabs/home_page.dart';
import 'package:demo01/pages/tabs/member_page.dart';
import 'package:flutter/material.dart';

final Map routes = {
  "/": (context) => HomePage(),
  "/car": (context) => CarPage(),
  "/member": (context) => MemberPage(),
};

var onGenerateRoute = (settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) {
          return pageContentBuilder(context, arguments: settings.arguments);
        },
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) {
          return pageContentBuilder(context);
        },
      );
      return route;
    }
  }
  return null;
};
