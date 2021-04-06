import 'package:shopy/routes/product/functions/colors.dart';
import 'package:flutter/material.dart';

class MySmooth extends StatefulWidget {
  @override
  _MySmoothState createState() => _MySmoothState();
}

class _MySmoothState extends State<MySmooth> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.vertical,
        children: [
          MyContainer(controller: controller, child: "assets/images/m9.jpg"),
          MyContainer(controller: controller, child: "assets/images/m2.jpg"),
          MyContainer(controller: controller, child: "assets/images/m3.jpg"),
          MyContainer(controller: controller, child: "assets/images/m4.jpg"),
          MyContainer(controller: controller, child: "assets/images/m5.jpg"),
          MyContainer(controller: controller, child: "assets/images/m7.jpg"),
          MyContainer(controller: controller, child: "assets/images/m8.jpg"),
          MyContainer(controller: controller, child: "assets/images/m9.jpg"),
          MyContainer(controller: controller, child: "assets/images/m2.jpg"),
          MyContainer(controller: controller, child: "assets/images/m3.jpg"),
          MyContainer(controller: controller, child: "assets/images/m4.jpg"),
          MyContainer(controller: controller, child: "assets/images/m5.jpg"),
          MyContainer(controller: controller, child: "assets/images/m7.jpg"),
          MyContainer(controller: controller, child: "assets/images/m8.jpg"),
        ],
      ),
    );
  }
}

class MyContainer extends StatefulWidget {
  final PageController controller;

  final String child;

  MyContainer({
    Key key,
    @required this.controller,
    this.child,
  }) : super(key: key);

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        color: darkColor,
        child: Column(
          children: [
            Center(
                child: Image.asset(
              widget.child,
              width: double.infinity,
              height: 632,
              fit: BoxFit.fitHeight,
            )),
          ],
        ),
      ),
    );
  }
}
