import 'package:flutter/material.dart';
import 'models/game.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key, required this.games});
  final Games games;

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
        content: Text(games.description),
        duration: const Duration(seconds: 3)
        ),
    );
  }

  Widget _buildPoster() {
    return Image.asset(
      games.imagePath,
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
            games.title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          '${games.year}',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildGenre() {
    return Text(
      games.genre,
      style: const TextStyle(color: Color.fromARGB(255, 255, 199, 255), fontSize: 13),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        const Icon(Icons.star, color: Color.fromARGB(255, 250, 185, 217), size: 18),
        const SizedBox(width: 4),
        Text(
          games.rating.toStringAsFixed(1),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      games.description,
      style: const TextStyle(fontSize: 13, color: Colors.black87),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}