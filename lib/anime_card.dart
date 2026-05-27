import 'package:flutter/material.dart';
import 'models/anime.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.anime});
  final Anime anime;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => _showDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildPoster(), _buildInfo()],
        ),
      ),
    );
  }

  void _showDetails(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(anime.description),
        duration: const Duration(seconds: 3)
        ),
    );
  }

  Widget _buildPoster() {
    return Image.asset(
      anime.imagePath,
      height: 550,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: 4),
          _buildGenre(),
          const SizedBox(height: 8),
          _buildRating(),
          const SizedBox(height: 8),
          _buildDescription(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            anime.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          '${anime.year}',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildGenre() {
    return Text(
      anime.genre,
      style: const TextStyle(color: Colors.deepPurple, fontSize: 13),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const SizedBox(width: 4),
        Text(
          anime.rating.toStringAsFixed(1),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      anime.description,
      style: const TextStyle(fontSize: 13, color: Colors.black87),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
