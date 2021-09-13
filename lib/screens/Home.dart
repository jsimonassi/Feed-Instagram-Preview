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
          style: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
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
                  horizontalInside: BorderSide(color: Colors.white, width: 2),
                  verticalInside: BorderSide(color: Colors.white, width: 2),
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
