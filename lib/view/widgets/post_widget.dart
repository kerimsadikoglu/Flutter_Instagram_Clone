import 'package:flutter/material.dart';
import 'package:instagram_story_player/models/post_model.dart';
import 'package:intl/intl.dart'; // Doğru yolu sağladığınızdan emin olun

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(post.userImage), // 'post' nesnesi üzerinden erişim
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(post.username, style: TextStyle(fontWeight: FontWeight.bold)), // 'post' nesnesi üzerinden erişim
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  // More options
                },
              ),
            ],
          ),
        ),
        Image.network(post.postImage, fit: BoxFit.cover), // 'post' nesnesi üzerinden erişim
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(Icons.favorite_border),
              SizedBox(width: 10),
              Icon(Icons.comment_outlined),
              SizedBox(width: 10),
              Icon(Icons.send_outlined),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.bookmark_border),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Liked by kerimsadikoglu and ${NumberFormat('#,###').format(post.likesCount)} others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
              children:[
                Text(
                  post.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5,),
                Text(
                  post.caption,
                )
              ]
          ),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(post.userImage),
                radius: 12.0,
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  "Yorum ekle...",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        Divider(height: 1, color: Colors.grey[300]),
      ],

    );
  }
}
