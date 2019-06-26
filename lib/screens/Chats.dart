import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp/screens/ChatDetails.dart';
import '../model/chat.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) =>
      Column(
        children: <Widget>[
          Divider(height: 20.0,),
          ListTile(
            leading: CircleAvatar(
              maxRadius: 25.0,
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(messageData[i].name,
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(messageData[i].time,
                style: TextStyle(color: Colors.grey, fontSize: 16.0),
                )
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(messageData[i].message,
              style: TextStyle(color: Colors.grey, fontSize: 15.0),),
            ),
            onTap: (){
              var route = MaterialPageRoute(
                builder: (BuildContext context) => ChatDetails(
                  name: messageData[i].name,
                  profileImage: messageData[i].imageUrl,
                )
              );
              Navigator.of(context).push(route);
            },
          )
        ],
      )
    );
  }
}