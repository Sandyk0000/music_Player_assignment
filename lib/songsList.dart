import 'package:flutter/material.dart';
import 'package:music_player__assignment/model/songModel.dart';

class SongListWidget extends StatefulWidget {
  final Song songList;

  SongListWidget({required this.songList});

  @override
  State<SongListWidget> createState() => _SongListWidgetState();
}

class _SongListWidgetState extends State<SongListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        children: [
          leftColumn(),
          Spacer(),
          rightColumn(),
        ],
      ),
    );
  }

  Widget leftColumn() {
    return Column(
      children: [
        Text(widget.songList.name),
        SizedBox(height: 10),
        Text(widget.songList.artist),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _onPlayButtonPressed();
          },
          child: Text(widget.songList.play ? 'Pause' : 'Play'),
        ),
      ],
    );
  }

  Widget rightColumn() {
    return Column(
      children: [
        Image.asset(
          widget.songList.imagePath,
          height: 65,
          width: 65,
        ),
      ],
    );
  }

  void _onPlayButtonPressed() {
    // Set the play state
    setState(() {
      widget.songList.play = !widget.songList.play;
    });

    // Navigate to a new screen when play button is pressed
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NowPlayingScreen(song: widget.songList),
      ),
    );
  }
}

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
