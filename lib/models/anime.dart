class Anime {
  const Anime({
    required this.title,
    required this.description,
    required this.genre,
    required this.year,
    required this.rating,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String genre;
  final int year;
  final double rating;
  final String imagePath;
}
