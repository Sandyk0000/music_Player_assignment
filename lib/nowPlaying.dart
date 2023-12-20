import 'package:flutter/material.dart';
import 'package:music_player__assignment/model/songModel.dart';

class NowPlayingScreen extends StatelessWidget {
  final Song song;

  NowPlayingScreen({required this.song});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Now Playing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Now Playing: ${song.name}'),
            // Add more details or controls if needed
          ],
        ),
      ),
    );
  }
}