import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_flutter/screens/videoscreen/provider/videoprovider.dart';

class Videoscreen extends StatefulWidget {
  const Videoscreen({Key? key}) : super(key: key);

  @override
  State<Videoscreen> createState() => _VideoscreenState();
}


class _VideoscreenState extends State<Videoscreen> {


  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Videoprovider>(context,listen: false).initVideo();
    super.initState();
  }

  Videoprovider? videoproviderTrue;
  Videoprovider? videoproviderFalse;

  @override
  Widget build(BuildContext context) {

    videoproviderFalse = Provider.of(context,listen: false);
    videoproviderTrue = Provider.of(context,listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Chewie(
              controller: videoproviderFalse!.chewieController!,
            ),
          ),
        ),
      ),
    );
  }
}
