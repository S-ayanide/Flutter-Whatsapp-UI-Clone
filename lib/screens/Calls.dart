import 'package:flutter/material.dart';
import '../model/calls.dart';
import 'dart:math';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, i) =>
      Column(
        children: <Widget>[
          Divider(height: 20.0,),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(callData[i].imageUrl),
            ),
            title: Text(callData[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(callData[i].time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0
                ),
              ),
            ),
            trailing: Icon(Icons.call),
            selected: true,
          ),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(callData[i].imageUrl),
            ),
            title: Text(callData[i].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(callData[i].time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0
                ),
              ),
            ),
            trailing: Icon(Icons.call),
            selected: true,
          )
        ],
      ),
    );
  }
}