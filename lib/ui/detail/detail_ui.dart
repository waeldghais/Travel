import 'package:flutter/material.dart';
import 'package:travel/model/Destination.dart';
import 'package:travel/ui/home/home_ui.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import '../../constants.dart';

class DetailsDestination extends StatelessWidget {
  final Destination destination;
  const DetailsDestination({Key key, this.destination}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawe(context),
      appBar: buildAppBar(context),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Image.asset(
            destination.image,
          ),
          SizedBox(height: kDefaultPaddin / 1.5),
          Center(
              child: Text(destination.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 20))),
          SizedBox(height: kDefaultPaddin / 1.5),
          Row(
            children: Conditional.list(
              context: context,
              conditionBuilder: (BuildContext context) =>
                  (destination.priceOff) == null,
              widgetBuilder: (BuildContext context) => <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 130),
                  child: Text(
                    "${destination.price} TND",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                ),
              ],
              fallbackBuilder: (BuildContext context) => <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 110),
                  child: Text(
                    "${destination.price} TND",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.5),
                    child: Text(
                      "${destination.priceOff} TND",
                      style: TextStyle(
                          color: Colors.red,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w900,
                          fontSize: 13),
                    )),
              ],
            ),
          ),
          SizedBox(height: kDefaultPaddin / 1.5),
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 68),
                  child: Text(
                    "DATE: De ${destination.dateAller.day}/${destination.dateAller.month}/${destination.dateAller.year}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    " à ${destination.dateRet.day}/${destination.dateRet.month}/${destination.dateRet.year}",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  )),
            ],
          ),
          SizedBox(height: kDefaultPaddin / 1.5),
          Center(
              child: RichText(
            text: TextSpan(
              text: 'Theme:  ',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: destination.theme,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red)),
              ],
            ),
          )),
          SizedBox(height: kDefaultPaddin / 1.5),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              destination.description,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[500],
                  fontSize: 19.5),
            ),
          ),
          SizedBox(height: kDefaultPaddin / 1.5),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 100),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    "Booking".toUpperCase(),
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red[500],
                ),
                tooltip: 'Favourites',
                onPressed: () {},
              ),
            ],
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBars(),
    );
  }
}
//Padding(
//    padding: EdgeInsets.all(20),
//child: Text(
//    destination.title,
// style: TextStyle(
//      color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17.0),
//),
//);
