
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_flutter/screens/videoscreen/provider/videoprovider.dart';
import 'package:video_player_flutter/screens/videoscreen/view/videoscreen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Videoprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Videoscreen(),
        },
      ),
    ),
  );
}