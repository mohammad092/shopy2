import 'package:group_button/group_button.dart';
import 'package:flutter/material.dart';


class WatchRadio extends StatefulWidget {
  final Color unColor, sColor;

  const WatchRadio({Key key, this.unColor, this.sColor}) : super(key: key);
  @override
  _WatchRadioState createState() => _WatchRadioState();
}

class _WatchRadioState extends State<WatchRadio> {
  @override
  Widget build(BuildContext context) {
    return GroupButton(
      selectedColor: widget.sColor,
      unselectedColor: widget.unColor,
    isRadio: true,
    spacing: 10,
      selectedTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Colors.white,
    ),
    unselectedTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: Colors.grey[600],
    ),
    onSelected: (index, isSelected) => print('$index button is selected'),
    buttons: [ "6", "6.5", "7", "7.5"],
    );
  }
}