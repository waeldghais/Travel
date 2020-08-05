import 'package:flutter/material.dart';

import 'package:travel/model/Theme.dart';

class TxTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 70, left: 20),
        child: Row(
          children: <Widget>[
            Text(
              'TRIP ',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
            ),
            Text(
              'THEMES',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ],
        ));
  }
}

class ImgTitelTheme extends StatelessWidget {
  final int index;

  ImgTitelTheme(this.index);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 100, left: 10),
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(theme[index].image))),
                ),
                Text(
                  theme[index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11.0),
                ),
              ],
            )
          ],
        ));
  }
}
