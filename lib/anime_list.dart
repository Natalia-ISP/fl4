import 'package:anime_catalog/anime_card.dart';
import 'package:anime_catalog/models/anime_data.dart';
import 'package:flutter/material.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: animeList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: AnimeCard(anime: animeList[index]),
        );
      },
    );
  }
}
