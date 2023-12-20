// song_list_widget.dart
import 'package:flutter/material.dart';
import 'package:music_player__assignment/model/songModel.dart';
import 'package:music_player__assignment/model/song_provider.dart';
import 'package:music_player__assignment/nowPlaying.dart';
import 'package:provider/provider.dart';


class SongListWidget extends StatelessWidget {
  final Song songList;

  SongListWidget({required this.songList});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Row(
        children: [
          leftColumn(context),
          Spacer(),
          rightColumn(),
        ],
      ),
    );
  }

  Widget leftColumn(BuildContext context) {
    return Column(
      children: [
        Text(songList.name),
        SizedBox(height: 10),
        Text(songList.artist),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _onPlayButtonPressed(context);
          },
          child: Text(songList.play ? 'Pause' : 'Play'),
        ),
      ],
    );
  }

  Widget rightColumn() {
    return Column(
      children: [
        Image.asset(
          songList.imagePath,
          height: 65,
          width: 65,
        ),
      ],
    );
  }

  void _onPlayButtonPressed(BuildContext context) {
    final songProvider = Provider.of<SongProvider>(context, listen: false);

    songProvider.togglePlayState(songList);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NowPlayingScreen(song: songList),
      ),
    );
  }
}
