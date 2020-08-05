import 'body.dart';
import 'package:flutter/material.dart';
import 'package:travel/constants.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      drawer: buildDrawe(context),
      backgroundColor: kTextColor,
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavigationBars(),
    );
  }
}

class BottomNavigationBars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text('Home', style: TextStyle(color: Colors.grey)),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.star, color: Colors.grey),
          title: new Text(
            'Trip',
          ),
        ),
        new BottomNavigationBarItem(
            icon: new Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            title:
                new Text('Favourites', style: TextStyle(color: Colors.grey))),
        new BottomNavigationBarItem(
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Profile', style: TextStyle(color: Colors.grey)),
        ),
      ],
      backgroundColor: Colors.white,
      currentIndex: 0,
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kTextColor,
    elevation: 0,
    title: const Text(
      'Tourisme TN',
      style: TextStyle(
        color: kTextLightColor,
      ),
    ),
    centerTitle: true,
  );
}

Drawer buildDrawe(BuildContext context) {
  return Drawer(
    child: ListView(
      children: <Widget>[Text('test')],
    ),
  );
}
