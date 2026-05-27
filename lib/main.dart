import 'package:anime_catalog/anime_list.dart';
import 'package:anime_catalog/models/anime_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Аниме-каталог',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          actions: [Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text('${animeList.length}'),
            ),
          ],
        ),
        body: AnimeList(),
      ),
    ),
  );
}
