/*

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:instagram_story_player/models/story_model.dart';

class StoryViewer extends StatefulWidget {
  final StoryModel story;

  StoryViewer({Key? key, required this.story}) : super(key: key);

  @override
  _StoryViewerState createState() => _StoryViewerState();
}

class _StoryViewerState extends State<StoryViewer> {
  VideoPlayerController? _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // İlk hikaye medya tipi video ise VideoPlayerController'ı başlatın
    if (widget.story.storyItems[_currentIndex].mediaType == MediaType.video) {
      _controller = VideoPlayerController.network(widget.story.storyItems[_currentIndex].url)
        ..initialize().then((_) {
          setState(() {});
          _controller!.play();
        });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onLongPressStart: (_) {
          _controller?.pause();
        },
        onLongPressEnd: (_) {
          _controller?.play();
        },
        child: Stack(
          children: [
            // Hikaye içeriğini göster
            PageView.builder(
              itemCount: widget.story.storyItems.length,
              itemBuilder: (context, index) {
                // Burada her bir medya için uygun widget'ı döndürün
                final item = widget.story.storyItems[index];
                if (item.mediaType == MediaType.video) {
                  return _controller!.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller!.value.aspectRatio,
                    child: VideoPlayer(_controller!),
                  )
                      : Center(child: CircularProgressIndicator());
                } else {
                  return Image.network(item.url, fit: BoxFit.cover);
                }
              },
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                  // VideoPlayerController'ı güncelleyin
                  if (_controller != null) {
                    _controller!.dispose();
                  }
                  if (widget.story.storyItems[index].mediaType == MediaType.video) {
                    _controller = VideoPlayerController.network(widget.story.storyItems[index].url)
                      ..initialize().then((_) {
                        setState(() {});
                        _controller!.play();
                      });
                  }
                });
              },
            ),
            // İlerleme çubuklarını göster
            Positioned(
              top: 40.0,
              left: 10.0,
              right: 10.0,
              child: Row(
                children: widget.story.storyItems.asMap().map((i, item) {
                  return MapEntry(
                    i,
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Container(
                          height: 2.0,
                          color: i == _currentIndex ? Colors.white : Colors.white24,
                        ),
                      ),
                    ),
                  );
                }).values.toList(),
              ),
            ),
            // Diğer UI bileşenleri, örneğin kullanıcı adı ve profil resmi
            // ...
          ],
        ),
      ),
    );
  }
}*/
