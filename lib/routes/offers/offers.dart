import 'package:flutter/material.dart';
import 'package:shopy/model/mybottom.dart';
import 'package:shopy/model/colors.dart';
import 'package:shopy/drawer.dart';
import 'package:shopy/routes/offers/offerview.dart';

class ZoomOffers extends StatefulWidget {
  @override
  _ZoomOffersState createState() => _ZoomOffersState();
}

class _ZoomOffersState extends State<ZoomOffers> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
           appBar: AppBar(
        elevation: 0,
        backgroundColor: darkColor,
        brightness: Brightness.dark,
        toolbarHeight: 37,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
             drawerC.toggle();
        },
        ),
      ),
     
      body: CustomZoom(child: Offers(),),
    );
  }
}

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightColor,
      body: MySmooth(),
      bottomNavigationBar: MyBAP2(title: 'Styles',),
    );
  }
}


