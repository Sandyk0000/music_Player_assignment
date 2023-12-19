import "package:flutter/material.dart";
import "package:music_player__assignment/model/songModel.dart";
import "package:music_player__assignment/model/songdata.dart";
import "package:music_player__assignment/songsList.dart";

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<SongsList> _songsList = songsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music Player"),
      ),
      body: ListView.builder(
        itemCount: _songsList.length,
        itemBuilder: (context, index) {
            return SongListWidget(songList: _songsList[index]);
        },
      ),
    );
  }
}