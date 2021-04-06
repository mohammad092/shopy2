import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:shopy/routes/about_us/about_us.dart';
import 'package:shopy/routes/offers/offers.dart';
import 'package:shopy/routes/product/functions/colors.dart';
import 'package:shopy/routes/product/product.dart';


var drawerC = ZoomDrawerController();

class CustomZoom extends StatefulWidget {
  final Widget child;
  CustomZoom({this.child});

  @override
  _CustomZoomState createState() => _CustomZoomState();
}

class _CustomZoomState extends State<CustomZoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerC,
        style: DrawerStyle.Style1,
        slideWidth:
        MediaQuery.of(context).size.width * (ZoomDrawer.isRTL() ? -0.45 : 0.65),
        menuScreen: MenuScreen(),
        mainScreen: widget.child,
        borderRadius: 24.0,
        showShadow: true,
        angle: -0.6,
        backgroundColor: Colors.white,
        openCurve: Curves.elasticOut,
        closeCurve: Curves.elasticIn,
        duration: Duration(milliseconds: 1000),
      ),
    );
  }
}

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ColoredBox(
        color: darkColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                direction: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
  width: 120,
  height: 120,
  decoration: BoxDecoration(
	shape: BoxShape.circle,
	image: DecorationImage(
	  image:AssetImage('assets/images/my.jpg'),
	  fit: BoxFit.fill
	),
  ),
),
                  ),
                  MyWidget(
                    route: ZoomOffers(),
                    text: "Styles",
                  ),
                  MyWidget(
                    route: ZoomProduct(),
                    text: "Products",
                  ),
                  MyWidget(
                    route: ZoomAbout(),
                    text: "About",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  final Widget route;
  final String text;
  const MyWidget({
    @required this.route,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: Duration(
                  milliseconds: 1500,
                ),
                transitionsBuilder: (context, animation, animationTime, child) {
                  animation =  CurvedAnimation(
                      parent: animation, curve: Curves.elasticOut);
                  return Align(
                    alignment: Alignment.center,
                    child: ScaleTransition(
                      scale: animation,
                      child: child,
                    ),
                  );
                },
                pageBuilder: (context, animation, animationTme) {
                  return widget.route;
                }),
          );
        },
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: 25,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
