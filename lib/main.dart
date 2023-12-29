// main.dart dosyası içinde
import 'package:flutter/material.dart';
import 'package:instagram_story_player/view/pages/story_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Story Player',
      home: StoryPage(), // Burada StoryPage'i ana sayfa olarak ayarlıyoruz
    );
  }
}