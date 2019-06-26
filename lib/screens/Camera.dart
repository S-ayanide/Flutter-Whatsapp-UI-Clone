import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'dart:async';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => _CameraState();
}

class _CameraState extends State<Camera> {

  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: _image == null
            ? Image(
              image: AssetImage("images/logo.png"),
              )
            : Image.file(_image)
            ,
          ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
            color: Theme.of(context).accentColor,
            child: Text("Add Photo", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            onPressed: _openDialogue,
          ),
        ],
      ),
    );
  }

  Future <void> _openDialogue(){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: BeveledRectangleBorder(),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  child: Text("Take a picture", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  onTap: openCamera,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                GestureDetector(
                  child: Text("Choose from Gallery", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                  onTap: openGallery,
                ),
              ],
            ),
          ),
        );
      }
    );
  }

  Future openCamera() async{
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future openGallery() async{
    var galleryImage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = galleryImage;
    });
  }
}