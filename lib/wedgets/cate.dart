import 'package:flutter/material.dart';

class Cate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(10),
              height: 40,
              child: Text(
                "Flutter",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color(0xff323232),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(10),
              height: 40,
              child: Text(
                "Action",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color(0xff323232),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(10),
              height: 40,
              child: Text(
                "Funny",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color(0xff323232),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(10),
              height: 40,
              child: Text(
                "Programming with flutter",
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color(0xff323232),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
