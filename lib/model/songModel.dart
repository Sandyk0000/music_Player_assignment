class SongsList{
  final String name;
  final String artist;
  final String imagePath;
   bool play;

  SongsList({
    required this.name,
    required this.artist,
    required this.imagePath,
    this.play = false,
  });
}