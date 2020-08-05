import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/model/Destination.dart';

import 'package:travel/model/Theme.dart';
import 'Destination_ui.dart';
import 'Searsh.dart';

import 'theme_voy.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                TxTheme(),
                Container(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: theme.length,
                      itemBuilder: (ctx, j) => ImgTitelTheme(j)),
                ),
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.grey[50].withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage("img/travel.jpg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.35),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Container(
                      child: ListView.builder(
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: destinations.length,
                          itemBuilder: (ctx, index) => DestinationUi(index)),
                    ),
                  ),
                ),
                TxDestination(),
                SearshTextFaild(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
