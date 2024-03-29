// ignore_for_file: prefer_const_constructors

import 'package:agro_sanoat/funcsions/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoPlyer extends StatelessWidget {
  const VideoPlyer({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);
  final dynamic videoUrl;
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: videoUrl,
      params: YoutubePlayerParams(
        showControls: true,
        autoPlay: true,
        desktopMode: true,
        showFullscreenButton: true,
      ),
    );
    return Scaffold(
      backgroundColor: MainColors.fromHex(MainColors.colorGreyDark),
      body: Stack(
        children: [
          Center(
            child: YoutubePlayerIFrame(
              controller: controller,
            ),
          ),
          Positioned(
              top: 20,
              left: 10,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: MainColors.fromHex(MainColors.colorGreen),
                  )))
        ],
      ),
    );
  }
}
