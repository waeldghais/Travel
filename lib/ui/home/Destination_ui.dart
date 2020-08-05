import 'package:flutter/material.dart';

import 'package:travel/model/Destination.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:travel/ui/detail/detail_ui.dart';

class TxDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 240.0, left: 70),
      child: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: 'TRENDING ',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
              children: <TextSpan>[
                TextSpan(
                  text: 'DESTINATION',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'AN',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
              children: <TextSpan>[
                TextSpan(
                  text: 'D',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'SPECIAL',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0),
              children: <TextSpan>[
                TextSpan(
                  text: ' OFFERS',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationUi extends StatelessWidget {
  final int index;

  DestinationUi(this.index);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 200,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: <Widget>[
            Container(
              child: Hero(
                tag: destinations[index].id,
                child: Image.asset(
                  destinations[index].image,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                destinations[index].title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10, left: 9),
                    child: Text(
                      "DATE: De ${destinations[index].dateAller.day}/${destinations[index].dateAller.month}/${destinations[index].dateAller.year}",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      " à ${destinations[index].dateRet.day}/${destinations[index].dateRet.month}/${destinations[index].dateRet.year}",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
              ],
            ),
            Column(
              children: Conditional.list(
                context: context,
                conditionBuilder: (BuildContext context) =>
                    (destinations[index].priceOff) == null,
                widgetBuilder: (BuildContext context) => <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      "${destinations[index].price} TND",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                    ),
                  ),
                ],
                fallbackBuilder: (BuildContext context) => <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 20),
                    child: Text(
                      "${destinations[index].price} TND",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w900,
                          fontSize: 24),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.5),
                      child: Text(
                        "${destinations[index].priceOff} TND",
                        style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.lineThrough,
                            fontWeight: FontWeight.w900,
                            fontSize: 13),
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.grey,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsDestination(
                        destination: destinations[index],
                      ),
                    )),
                child: Text(
                  "show details".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    //padding: const EdgeInsets.all(5),
  }
}
