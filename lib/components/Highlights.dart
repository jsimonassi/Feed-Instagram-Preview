import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {

  highlightItem(){
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        top: 10
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            maxRadius: 33,
          ),
          Text(
            "Destaques"
          )
        ],
      ) ,
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          highlightItem(),
          highlightItem(),
          highlightItem(),
          highlightItem(),
          highlightItem(),
          highlightItem(),
          highlightItem(),
          highlightItem(),
        ],
      ),
    );
  }
}
