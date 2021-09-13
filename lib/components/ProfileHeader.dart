import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {

  infoObject(String info, String desc){
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            info,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
          Text(
              desc
          )
        ],
      ) ,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
      ),
      color: Colors.white, //Todo: Deve variar de acordo com o modo escuro/claro
      child: Row(
        children: <Widget>[
          Container(
            child:CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.black,
            ) ,
          ),
          Expanded(child: Container()),
          infoObject("20", "Posts"),
          Expanded(child: Container()),
          infoObject("1.745", "Seguidores"),
          Expanded(child: Container()),
          infoObject("1.359", "Seguindo"),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
