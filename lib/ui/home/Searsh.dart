import 'package:flutter/material.dart';

class SearshTextFaild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border.all(width: 0.0),
              borderRadius: new BorderRadius.circular(35.0)),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Destinations,Themes",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(35.0)),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ));
  }
}
