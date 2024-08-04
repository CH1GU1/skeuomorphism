import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final double maxHeight;
  final double maxWidth;

  const VideoPlayerWidget({
    super.key,
    required this.videoUrl,
    required this.maxHeight,
    required this.maxWidth,
  });

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
          _controller.play();
        }
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: const EdgeInsets.all(5),
      drawSurfaceAboveChild: true,
      style: const NeumorphicStyle(
        oppositeShadowLightSource: true,
        depth: 10,
        intensity: 1,
        shape: NeumorphicShape.convex,
        lightSource: LightSource.bottom,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: widget.maxHeight,
          maxWidth: widget.maxWidth,
        ),
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  _controller.play();
                }
              });
            },
            child: VideoPlayer(_controller),
          ),
        ),
      ),
    );
  }
}
