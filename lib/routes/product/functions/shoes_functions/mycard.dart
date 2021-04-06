import 'package:flutter/material.dart';
import 'package:shopy/model/mycard.dart';
import 'package:shopy/model/colors.dart';

class MyCard extends StatelessWidget {
  final Product product;
  final Function press;
  const MyCard({
    Key key,
    this.product,
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
                      color: product.bgcolor,

            ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                    child: Hero(
                      tag: product.id,
                      transitionOnUserGestures: true,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.contain,
                        height: 200,
                      ),
                    ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                 child: Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: product.tcolor,
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
