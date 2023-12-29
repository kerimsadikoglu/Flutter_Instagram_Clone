import 'package:flutter/material.dart';


class CustomInstagramBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home, color: Colors.black),
            onPressed: () {
              // Anasayfa butonu işlevi
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Arama butonu işlevi
            },
          ),
          IconButton(
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
            onPressed: () {
              // Yeni gönderi ekleme butonu işlevi
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {
              // Beğeni butonu işlevi
            },
          ),
          IconButton(
            icon: Icon(Icons.person_2_outlined, color: Colors.black),
            onPressed: () {
              // Beğeni butonu işlevi
            },
          ),

        ],
      ),
    );
  }
}