import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, // AppBar altındaki gölgeyi kaldırır
      title: Text(
        '𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶',
        style: TextStyle(
          color: Colors.black, // Logonun rengi
          fontFamily: 'Billabong', // Instagram logonun tipik fontu
          fontSize: 35.0, // Logonun boyutu
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite_border, color: Colors.black),
          onPressed: () {
            // Kalp ikonuna tıklama işlevi
          },
        ),
        IconButton(
          icon: Icon(Icons.message_outlined, color: Colors.black),
          onPressed: () {
            // Sohbet ikonuna tıklama işlevi
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // AppBar'ın yüksekliğini belirler
}