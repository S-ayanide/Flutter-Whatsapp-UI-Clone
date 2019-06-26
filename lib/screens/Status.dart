import 'package:flutter/material.dart';
import '../resuable/Wcards.dart';
import '../model/chat.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Wcard("My Status", messageData[1].imageUrl, "Tap to add status"),
        Divider(),
        Heading("Recent Updates"),
        Wcard(messageData[2].name, messageData[2].imageUrl, messageData[2].time),
        Wcard(messageData[4].name, messageData[4].imageUrl, messageData[4].time),
        Divider(),
        Heading("Today's Update"),
        Wcard(messageData[5].name, messageData[5].imageUrl, messageData[5].time),
        Wcard(messageData[3].name, messageData[3].imageUrl, messageData[3].time),
      ],
    );
  }
}

class Heading extends StatelessWidget {

  final String heading;
  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0,top: 5.0),
        child: Text(
          heading,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
        ),
      ),  
    );
  }
}