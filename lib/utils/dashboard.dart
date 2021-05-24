import 'package:flutter/material.dart';
import 'dashboard-stub.dart'
    // ignore: uri_does_not_exist
    if (dart.library.io) '../pages/widgets/dashboard-mobile.dart'
    // ignore: uri_does_not_exist
    if (dart.library.html) '../pages/widgets/dashboard-web.dart';

abstract class Dashboard {
  Container returnDashboard() {
    return new Container();
  }

  factory Dashboard() => getDash();
}
