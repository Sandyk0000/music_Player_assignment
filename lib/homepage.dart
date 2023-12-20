import "package:flutter/material.dart";
import "package:music_player__assignment/model/song_provider.dart";
import "package:music_player__assignment/songsList.dart";
import "package:provider/provider.dart";

class HomePage extends StatelessWidget {

  //final List<Song> _songsList = songs;
  

  @override
  Widget build(BuildContext context) {
    var songProvider = Provider.of<SongProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Music Player"),
      ),
      body: ListView.builder(
        itemCount: songProvider.songdetails.length,
        itemBuilder: (context, index) {
          return SongListWidget(songList: songProvider.songdetails[index]);
        },
      ),
    );
  }
}