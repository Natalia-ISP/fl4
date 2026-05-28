import 'package:game_catalog/game_list.dart';
import 'package:game_catalog/models/game_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 151, 220),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Каталог игр',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 211, 253),
          foregroundColor: Colors.white,
          actions: [Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text('${gameList.length}'),
            ),
          ],
        ),
        body: GameList(),
      ),
    ),
  );
}