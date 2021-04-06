import 'package:flutter/material.dart';
import 'package:shopy/model/watch_model.dart';
import 'package:shopy/routes/details_page/watch_details/bottom.dart';
import 'package:shopy/routes/details_page/watch_details/top.dart';

class WatchDetails extends StatelessWidget {
  final Watch watch;
  const WatchDetails({Key key, this.watch}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: watch.bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            TopWatch(
              tag: watch.id,
              color: watch.bgcolor,
              image: watch.image,
            ),
            WatchBottom(
              bgcolor: watch.bgcolor,
              tcolor: watch.tcolor,
              price: watch.price,
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBAP2(
        color: watch.bgcolor,
        bgcolor: watch.tcolor,
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
