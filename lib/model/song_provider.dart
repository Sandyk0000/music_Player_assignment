// song_provider.dart
import 'package:flutter/foundation.dart';
import 'package:music_player__assignment/model/songModel.dart';
import "package:music_player__assignment/model/songdata.dart";


class SongProvider extends ChangeNotifier {
  List<Song> _songs = songs;

  List<Song> get songdetails => _songs;

  void setSongs(List<Song> songs) {
    _songs = songs;
    notifyListeners();
  }

  void togglePlayState(Song song) {
    song.play = !song.play;
    notifyListeners();
  }
}
