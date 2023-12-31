import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatelessWidget {
  final String videoUrl;
  final int duration;

  VideoWidget({required this.videoUrl,required this.duration});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9, // Video boyutunu ayarlayabilirsiniz.
      child: VideoPlayerWidget(videoUrl: videoUrl),
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;

  VideoPlayerWidget({required this.videoUrl});

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        // Video başladığında otomatik olarak oynatmak için:
         _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
