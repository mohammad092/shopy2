import 'package:flutter/material.dart';
import 'package:shopy/routes/details_page/bottom_screen.dart';
import 'package:shopy/routes/details_page/top_screen.dart';
import 'package:shopy/model/mycard.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class DetailsPage extends StatelessWidget {
  final Product product;
  const DetailsPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(product.bgcolor);

    return Scaffold(
      backgroundColor: product.bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            TopScreen(
              tag: product.id,
              color: product.bgcolor,
              image: product.image,
            ),
            BottomScreen(
              bgcolor: product.bgcolor,
              tcolor: product.tcolor,
              price: product.price,
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBAP2(
        color: product.bgcolor,
        bgcolor: product.tcolor,
      ),
    );
  }
}

class MyBAP2 extends StatefulWidget {
  final Color color;
  final Color bgcolor;

  const MyBAP2({
    this.color,
    this.bgcolor,
    Key key,
  }) : super(key: key);

  @override
  _MyBAP2State createState() => _MyBAP2State();
}

class _MyBAP2State extends State<MyBAP2> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: widget.bgcolor,
      child: ListTile(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: widget.color),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
