import "package:flutter/material.dart";
import "package:music_player__assignment/homepage.dart";
import "package:music_player__assignment/model/song_provider.dart";
import "package:provider/provider.dart";

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (context) => SongProvider(),
      child: MyApp(),
    )
  );
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

