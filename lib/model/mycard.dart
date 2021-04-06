import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color, bgcolor, tcolor;
  final Widget text;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
    this.bgcolor,
    this.tcolor,
    this.text
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Shoes Running",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/s1.png",
      bgcolor:Color.fromRGBO(113, 0, 1, 1),
      tcolor: Colors.white,
      ),
  Product(
      id: 2,
      title: "Shoes sport",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/s2.png",
      bgcolor: Color.fromRGBO(125,66,72,1),
       tcolor: Colors.white,

      ),
  Product(
      id: 3,
      title: "shoes travel",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/s3.png",
      bgcolor: Color.fromRGBO(227,227,227,1),
      tcolor: Colors.black87,
      ),
  Product(
      id: 4,
      title: "Shoes walk",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/s4.png",
      bgcolor: Color.fromRGBO(0,69,142,1),
      tcolor: Colors.white,
      ),
       Product(
      id: 5,
      title: "Shoes Running",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/s1.png",
      bgcolor:Color.fromRGBO(113, 0, 1, 1),
      tcolor: Colors.white,
      ),
  Product(
      id: 6,
      title: "Shoes travel",

      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/s2.png",
      bgcolor: Color.fromRGBO(125,66,72,1),
      tcolor: Colors.white,

      ),
  Product(
      id: 7,
title: "Shoes Jumping",

      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/s3.png",
      bgcolor: Color.fromRGBO(227,227,227,1),
      tcolor: Colors.black87,

      ),
  Product(
      id: 8,
      title: "Shoes walk",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/s4.png",
      bgcolor: Color.fromRGBO(0,69,142,1),
      tcolor: Colors.white,
      ),
      
];

class MyText extends StatefulWidget {
  final String text;
  final Color color;
  const MyText({
    Key key,
    this.text,
    this.color
  }) : super(key: key);

  @override
  _MyTextState createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text(
                 widget.text ,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: widget.color,
                  ),
                );
  }
}






String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
