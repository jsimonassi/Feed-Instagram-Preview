import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_preview/components/Bio.dart';
import 'package:instagram_preview/components/Highlights.dart';
import 'package:instagram_preview/components/ProfileHeader.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "joao.simonassi",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              ProfileHeader(),
              Bio(),
              Highlights(),
              Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.white,width: 2),
                  verticalInside:  BorderSide(color: Colors.white,width: 2),
                ),
                children: [
                  TableRow(children: <Widget>[
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.redAccent,
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.deepOrangeAccent,
                    )
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.redAccent,
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.deepOrangeAccent,
                    )
                  ]),
                  TableRow(children: <Widget>[
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.redAccent,
                    ),
                    Container(
                      width: 100,
                      height: 130,
                      color: Colors.deepOrangeAccent,
                    )
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
