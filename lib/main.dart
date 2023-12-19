import "package:flutter/material.dart";
import "package:music_player__assignment/homepage.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      home: HomePage(),
    );
  }
}

