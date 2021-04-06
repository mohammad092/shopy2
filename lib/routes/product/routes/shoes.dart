import 'package:flutter/material.dart';
import 'package:shopy/model/mycard.dart';
import 'package:shopy/routes/details_page/details.dart';
import 'package:shopy/routes/product/functions/mycard.dart';
  


class MyShoes extends StatefulWidget {
  @override
  _MyShoesState createState() => _MyShoesState();
}

class _MyShoesState extends State<MyShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio:  1/0.7 ,
            ),
            itemBuilder: (context, index) => MyCard(
              product: products[index],
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
                    return DetailsPage(product: products[index],);
                  },),
            ),
          ),
        ),
        ),
      ),
    );
  }
}
