import 'package:game_catalog/game_card.dart';
import 'package:game_catalog/models/game_data.dart';
import 'package:flutter/material.dart';

class GameList extends StatelessWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(12),
      itemCount: gameList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: GameCard(games: gameList[index]),
        );
      },
    );
  }
}