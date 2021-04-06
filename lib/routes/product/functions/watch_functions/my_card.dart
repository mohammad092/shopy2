import 'package:flutter/material.dart';
import 'package:shopy/routes/product/functions/colors.dart';
import 'package:shopy/model/watch_model.dart';

class MyCard extends StatelessWidget {
  final Watch watch;
  final Function press;
  const MyCard({
    Key key,
    this.watch,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
            topLeft:Radius.circular(40), topRight: Radius.circular(40),
            bottomLeft:Radius.circular(10) ,bottomRight:Radius.circular(10),
            ),
                      color: watch.bgcolor,

            ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                    child: Hero(
                      tag: watch.id,
                      transitionOnUserGestures: true,
                      child: Image.asset(
                        watch.image,
                        fit: BoxFit.contain,
                        height: 200,
                      ),
                    ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    watch.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: watch.tcolor,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child:IconButton(
                      onPressed:(){} ,
                       icon: Icon(
                       Icons.favorite_outline_rounded,size: 30, 
                       color: whiteColor,
                       ),                 
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
