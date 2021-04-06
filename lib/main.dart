import 'package:flutter/material.dart';
import 'package:shopy/router.dart';
import 'package:shopy/model/colors.dart';
import 'package:shopy/routes/product/product.dart';

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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteG.generateR,
      home: ZoomProduct(),
    );
  } 
}
