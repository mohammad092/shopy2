import 'package:flutter/material.dart';

class TopScreen extends StatefulWidget {
  final Color color;
  final String image;
  final int tag;
  const TopScreen({Key key, this.color, this.image, this.tag})
      : super(key: key);
  @override
  _TopScreenState createState() => _TopScreenState();
}

class _TopScreenState extends State<TopScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.3236,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: widget.color,
      child: Hero(
        tag: widget.tag,
        transitionOnUserGestures: true,
        child: Image.asset(
          widget.image,
          fit: BoxFit.contain,
        ),),);
  }
}