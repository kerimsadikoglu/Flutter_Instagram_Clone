// post_model.dart
class Post {
  final String username;
  final String userImage;
  final String postImage;
  final String caption;
  final int likesCount;

  const Post({
    required this.username,
    required this.userImage,
    required this.postImage,
    required this.caption,
    required this.likesCount,
  });
}
