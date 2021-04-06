import 'package:flutter/material.dart';

class TopWatch extends StatefulWidget {
  final Color color;
  final String image;
  final int tag;
  const TopWatch({Key key, this.color, this.image, this.tag})
      : super(key: key);
  @override
  _TopWatchState createState() => _TopWatchState();
}

class _TopWatchState extends State<TopWatch> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.33,
        width: MediaQuery.of(context).size.width,
        color: widget.color,
        child: Hero(
            tag: widget.tag,
            transitionOnUserGestures: true,
            child: Image.asset(
              widget.image,
              fit: BoxFit.contain,
            )));
  }
}
