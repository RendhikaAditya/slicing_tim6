// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerScreen extends StatefulWidget {
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }

// class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
//   late VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;
//   double _volume = 0.5;
//   bool _isFullScreen = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//         'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4');
//     _initializeVideoPlayerFuture = _controller.initialize();
//     _controller.setLooping(true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Player Demo'),
//       ),
//       body: FutureBuilder(
//         future: _initializeVideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return AspectRatio(
//               aspectRatio: _controller.value.aspectRatio,
//               child: Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   VideoPlayer(_controller),
//                   _buildControls(),
//                 ],
//               ),
//             );
//           } else {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildControls() {
//     return Container(
//       color: Colors.black26,
//       padding: EdgeInsets.symmetric(vertical: 8.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 icon: Icon(_controller.value.isPlaying
//                     ? Icons.pause
//                     : Icons.play_arrow),
//                 onPressed: () {
//                   setState(() {
//                     _controller.value.isPlaying
//                         ? _controller.pause()
//                         : _controller.play();
//                   });
//                 },
//               ),
//               IconButton(
//                 icon: Icon(_controller.value.volume > 0
//                     ? Icons.volume_up
//                     : Icons.volume_off),
//                 onPressed: () {
//                   setState(() {
//                     _controller.setVolume(
//                         _controller.value.volume > 0 ? 0.0 : _volume);
//                   });
//                 },
//               ),
//               Slider(
//                 value: _controller.value.position.inSeconds.toDouble(),
//                 min: 0,
//                 max: _controller.value.duration.inSeconds.toDouble(),
//                 onChanged: (value) {
//                   setState(() {
//                     _controller.seekTo(Duration(seconds: value.toInt()));
//                   });
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
