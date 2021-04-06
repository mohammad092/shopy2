import 'package:group_button/group_button.dart';
import 'package:flutter/material.dart';


class CustomRadio extends StatefulWidget {
  final Color unColor, sColor;

  const CustomRadio({Key key, this.unColor, this.sColor}) : super(key: key);
  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
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
    buttons: [ "42", "43", "44", "45"],
    );
  }
}