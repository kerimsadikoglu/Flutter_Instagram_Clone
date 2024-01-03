import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, // AppBar altındaki gölgeyi kaldırır
      title: Image.network(
        'https://freelogopng.com/images/all_img/1658587465instagram-name-logo.png',
        height: 35.0, // Resmin boyutunu ayarlayabilirsiniz
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