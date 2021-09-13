import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: 10,
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "João Victor Simonassi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            "Perdido entre o Mi# e o Fab |\n"
                "UFF - Computação |\n"
                "@2PixelsFotografia",
            style: TextStyle(
                fontSize: 16
            ),
          ),
        ],
      ),
    );
  }
}
