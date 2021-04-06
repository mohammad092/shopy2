import 'package:flutter/material.dart';
import 'package:shopy/drawer.dart';
import 'package:shopy/routes/about_us/about_us.dart';
import 'package:shopy/routes/product/product.dart';
import 'package:shopy/routes/offers/offers.dart';

class RouteG {
  // ignore: missing_return
  static Route<dynamic> generateR(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => CustomZoom());
      case '/product':
        return MaterialPageRoute(builder: (_) => ZoomProduct());
      case '/offers':
        return MaterialPageRoute(builder: (_) => ZoomOffers());
      case '/about':
        return MaterialPageRoute(builder: (_) => ZoomAbout());
    }
  }



}


