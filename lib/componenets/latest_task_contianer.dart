import 'package:flutter/material.dart';

class LatestTaskContianer extends StatelessWidget {
  String title, desp, points;
  LatestTaskContianer(
      {super.key,
      required this.title,
      required this.desp,
      required this.points});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFFFFFF),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Health and Wellness',
              style: TextStyle(color: Color(0xff008101)),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              desp,
              style: TextStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/star.png'),
                  height: 20,
                  width: 20,
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  points,
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
