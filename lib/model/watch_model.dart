import 'package:flutter/material.dart';

class Watch {
  final String image, title, description;
  final int price, size, id;
  final Color color, bgcolor, tcolor;
  final Text text;
  Watch({
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

List<Watch> watches = [
  Watch(
      id: 1,
      title: "black Night",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/w1.png",
      bgcolor:Color.fromRGBO(38,39,43,1),
      tcolor: Color.fromRGBO(255,255,255,0.8),
      ),
  Watch(
      id: 2,
      title: "Golden dark",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/w2.png",
      bgcolor: Color.fromRGBO(175,160,96,1),
      tcolor: Color.fromRGBO(255,255,255,0.8),

      ),
  Watch(
      id: 3,
      title: "Golden black",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/w3.png",
      bgcolor: Color.fromRGBO(245,241,222,1),
      tcolor: Color.fromRGBO(55,55,55,1),
      ),
  Watch(
      id: 4,
      title: "Night moon",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/w4.png",
      bgcolor: Color.fromRGBO(55,97,133,1),
      tcolor: Color.fromRGBO(255,255,255,0.8),
      ),
       Watch(
      id: 5,
      title: "black Night",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/w1.png",
      bgcolor:Color.fromRGBO(38,39,43,1),
      tcolor: Color.fromRGBO(255,255,255,0.8),
      ),
  Watch(
      id: 6,
      title: "Golden dark",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/w2.png",
      bgcolor: Color.fromRGBO(175,160,96,1),
      tcolor: Color.fromRGBO(255,255,255,0.8),

      ),
  Watch(
      id: 7,
      title: "Golden black",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/w3.png",
      bgcolor: Color.fromRGBO(245,241,222,1),
      tcolor: Color.fromRGBO(55,55,55,1),

      ),
  Watch(
      id: 8,
      title: "Night moon",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/w4.png",
      bgcolor: Color.fromRGBO(55,97,133,1),
      tcolor: Color.fromRGBO(255,255,255,0.8),
      ),
      
];






String dummyText ="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley" ;
