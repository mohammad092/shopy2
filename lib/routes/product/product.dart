import 'package:flutter/material.dart';
import 'package:shopy/routes/product/functions/colors.dart';
import 'package:shopy/routes/product/functions/tabbar.dart';
import 'package:shopy/drawer.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class ZoomProduct extends StatefulWidget {
  @override
  _ZoomProductState createState() => _ZoomProductState();
}

class _ZoomProductState extends State<ZoomProduct> {
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(darkColor);
    return Scaffold(
              appBar: AppBar(
          backgroundColor: darkColor,
          elevation: 0,
          toolbarHeight: 37,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: whiteColor,
            ),
            onPressed: () {
             drawerC.toggle();
            },
          ),
        ),
        body: CustomZoom(
      child: Home(),
    ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: ColoredBox(color: whiteColor, child: MyTab()),
        bottomNavigationBar: menu(),
      ),
    );
  }
}
