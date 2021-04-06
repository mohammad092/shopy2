import 'package:flutter/material.dart';
import 'package:shopy/router.dart';
import 'package:shopy/routes/product/functions/colors.dart';
import 'package:shopy/routes/product/product.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

void main() {
  runApp(

      
MyApp(),
    
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(darkColor);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteG.generateR,
      home: ZoomProduct(),
    );
  } 
}
