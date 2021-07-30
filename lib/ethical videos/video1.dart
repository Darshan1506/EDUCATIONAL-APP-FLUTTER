import 'package:flutter/material.dart';
import 'package:flutter_udemyapk/ethical%20videos/chewie_list.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(VideoF());

class VideoF extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Ethical hacking'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: <Widget>[

          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://multiplatform-f.akamaihd.net/i/multi/april11/sintel/sintel-hd_,512x288_450_b,640x360_700_b,768x432_1000_b,1024x576_1400_m,.mp4.csmil/master.m3u8',
            ),
            looping: true,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'https://multiplatform-f.akamaihd.net/i/multi/april11/sintel/sintel-hd_,512x288_450_b,640x360_700_b,768x432_1000_b,1024x576_1400_m,.mp4.csmil/master.m3u8',
            ),
            looping: true,
          ),



        ],
      ),
    );
  }
}
