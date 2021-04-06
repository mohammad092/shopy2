import 'package:flutter/material.dart';
import 'package:shopy/drawer.dart';
import 'package:shopy/routes/product/functions/colors.dart';


class MyBAP2 extends StatefulWidget {
  final String title;
  const MyBAP2({
    Key key,
    this.title
  }) : super(key: key);

  @override
  _MyBAP2State createState() => _MyBAP2State();
}

class _MyBAP2State extends State<MyBAP2> {
      

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: darkColor,
      child: ListTile(
        leading: IconButton(
          icon: Icon(
Icons.menu,
color:Colors.white, ),
                onPressed: () {
drawerC.toggle();
                },
        
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: lightColor),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.search,
            color: lightColor,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

