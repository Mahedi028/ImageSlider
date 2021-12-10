import 'package:flutter/material.dart';
import 'dart:math';


void main(){
  runApp(ImageSlide());
}

class ImageSlide extends StatefulWidget {
  @override
  _ImageSlide createState() => _ImageSlide();
}

class _ImageSlide extends State<ImageSlide> {
  @override
  int imageNumber=1;

  void ChangeImage(){
     setState(() {
        imageNumber=Random().nextInt(5)+1;
      });

  }
  
    Widget build(BuildContext) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'ImageSlide',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            ),
            body:Center(
              child:SafeArea(
              child:FlatButton(
                onPressed: (){
                 ChangeImage();
                },
                child:Image.asset('assets/image-$imageNumber.jpg')
                ),
                ), 
                )
            ),
            );
  }
}