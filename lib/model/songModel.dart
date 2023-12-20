class Song{
  final String name;
  final String artist;
  final String imagePath;
   bool play;

  Song({
    required this.name,
    required this.artist,
    required this.imagePath,
    this.play = false,
  });
}