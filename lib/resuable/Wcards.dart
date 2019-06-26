import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Wcard extends StatelessWidget {

  final String name, imageurl, time;

  Wcard(this.name, this.imageurl,this.time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 25.0,
        foregroundColor: Colors.blueGrey,
        backgroundImage: NetworkImage(imageurl),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold
        )
      ),
      subtitle: Text(time),
    );
  }
}