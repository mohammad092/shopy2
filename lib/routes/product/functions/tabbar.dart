import 'package:flutter/material.dart';
import 'package:shopy/routes/product/functions/colors.dart';
import 'package:shopy/routes/product/routes/shoes.dart';
import 'package:shopy/routes/product/routes/watch.dart';
import 'package:shopy/drawer.dart';

class MyTab extends StatelessWidget {
  const MyTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        MyShoes(),
        MyWatch(),
      ],
    );
  }
}

Widget menu() {
  return ColoredBox(
    color: darkColor,
    child: Row(
      children: [
        Container(
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              drawerC.toggle();
            },
          ),
        ),
        Expanded(
          child: TabBar(
            tabs: [
              Tab(
                text: 'Shoes',
              ),
              Tab(
                text: 'Watches',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
