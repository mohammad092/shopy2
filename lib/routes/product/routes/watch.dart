import 'package:flutter/material.dart';
import 'package:shopy/model/watch_model.dart';
import 'package:shopy/routes/details_page/watch_details/w_details.dart';
import 'package:shopy/routes/product/functions/watch_functions/my_card.dart';  


class MyWatch extends StatefulWidget {
  @override
  _MyWatchState createState() => _MyWatchState();
}

class _MyWatchState extends State<MyWatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: watches.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio:  1/0.7 ,
            ),
            itemBuilder: (context, index) => MyCard(
              watch: watches[index],
              press: () =>  Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: Duration(
                    milliseconds: 1000,
                  ),
                  transitionsBuilder: (context, animation, animationTime, child) {
                    animation = CurvedAnimation(parent: animation, curve:Curves.easeInOutCubic);
                    return   Align(
                      alignment: Alignment.centerLeft,
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),);
                  },
                  pageBuilder: (context, animation, animationTme) {
                    return WatchDetails(watch: watches[index],);
                  },),
            ),
          ),
        ),
        ),
      ),
    );
  }
}
