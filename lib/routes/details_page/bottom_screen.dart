import 'package:flutter/material.dart';
import 'package:shopy/routes/details_page/customradio.dart';

class BottomScreen extends StatefulWidget {
  final Color bgcolor, tcolor;
  final int price;
  const BottomScreen({Key key, this.bgcolor, this.tcolor, this.price}) : super(key: key);
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55201,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
        color: widget.tcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Sample Text',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: widget.bgcolor,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum ',
              style: TextStyle(fontSize: 14, color: widget.bgcolor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Colors : ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: widget.bgcolor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      MyContainer(
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyContainer(
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyContainer(
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyContainer(
                        color: Colors.green,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      'Size : ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: widget.bgcolor),
                    ),
                  ),
                  Row(
                    children: [
                      CustomRadio(
                        sColor: widget.bgcolor,
                        unColor: widget.tcolor,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 6.5,),
            Text(
                      'Price : \$${widget.price}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: widget.bgcolor),
                    ),
                    SizedBox(height: 7,),
            Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    ),
                child: Text(
                  'Purchase',
                  style: TextStyle(fontSize: 22),
                ),
                onPressed: () {},
                color: widget.bgcolor,
                textColor: widget.tcolor,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyContainer extends StatefulWidget {
  final Color color;
  const MyContainer({
    this.color,
    Key key,
  }) : super(key: key);

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.color,
      ),
    );
  }
}
