import 'dart:async';

import 'package:flutter/material.dart';
import 'package:screen/screen.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(Videoo());

class Videoo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      title: 'Video Player Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  VideoPlayerController _controller;

  bool _disposeWidget = true;

  final List<Channel> channels = [
    Channel(
      name: 'tut 1',
      uri: 'https://multiplatform-f.akamaihd.net/i/multi/april11/sintel/sintel-hd_,512x288_450_b,640x360_700_b,768x432_1000_b,1024x576_1400_m,.mp4.csmil/master.m3u8',
    ),
    Channel(
      name: 'tut 2',
      uri:
      'https://multiplatform-f.akamaihd.net/i/multi/april11/sintel/sintel-hd_,512x288_450_b,640x360_700_b,768x432_1000_b,1024x576_1400_m,.mp4.csmil/master.m3u8',
    ),
    Channel(
      name: 'tut3',
      uri: 'https://multiplatform-f.akamaihd.net/i/multi/april11/sintel/sintel-hd_,512x288_450_b,640x360_700_b,768x432_1000_b,1024x576_1400_m,.mp4.csmil/master.m3u8',
    ),
    Channel(
      name: 'tut3',
      uri:
      'https://multiplatform-f.akamaihd.net/i/multi/april11/sintel/sintel-hd_,512x288_450_b,640x360_700_b,768x432_1000_b,1024x576_1400_m,.mp4.csmil/master.m3u8',
    ),
  ];

  @override
  void initState() {
    super.initState();
    Screen.keepOn(true);
    _updatePlayer(channels.first);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: !_disposeWidget
                ? _getVideoPlayer()
                : Container(
              child: Text('Loading Channel'),
            ),
          ),
          Expanded(
            child: ListView(
              children: ListTile.divideTiles(
                  context: context,
                  tiles: channels.map((channel) => ChannelTile(
                    channel,
                    onTap: _changeChannel,
                  ))).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getVideoPlayer() {
    return _controller.value.initialized
        ? AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: VideoPlayer(_controller),
    )
        : Container(
      child: Text('Empty.'),
    );
  }

  void _changeChannel(Channel channel) {
    print(channel.uri);

    setState(() {
      _disposeWidget = true;
    });

    _controller.pause().then((pause) {
      new Timer(new Duration(milliseconds: 100), () {
        _controller.dispose().then((_) {
          _updatePlayer(channel);
        });
      });
    });
  }

  void _updatePlayer(Channel channel) {
    _controller = VideoPlayerController.network(channel.uri)
      ..initialize().then((_) {
        setState(() {
          _disposeWidget = false;
        });
      })
      ..play();
  }
}

class Channel {
  @required
  String name;
  @required
  String uri;

  Channel({this.name, this.uri});
}

class ChannelTile extends StatelessWidget {
  final Channel channel;
  final Function onTap;
  final Function onLongPress;

  const ChannelTile(this.channel, {this.onTap, this.onLongPress, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.live_tv),
      title: Text(channel.name),
      subtitle: Text("Programa atual."),
      onTap: () => onTap != null ? onTap(channel) : null,
      onLongPress: () => onLongPress != null ? onLongPress(channel) : null,
    );
  }
}