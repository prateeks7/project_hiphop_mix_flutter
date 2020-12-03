import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color c1 = Colors.black;
  Color c2 = Colors.black;
  Color c3 = Colors.black;
  Color c4 = Colors.black;
  final player = AudioCache();
  int stop = 0;
  int sn1 = Random().nextInt(4)+1;
  int sn2 = Random().nextInt(6)+1;
  int sn3 = Random().nextInt(5)+1;
  int sn4 = Random().nextInt(4)+1;
  Column dis({int pic,String name}) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/img$pic.png'),
            Text(
                "$name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )
            ),
          ],
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        color: c1,
                       child: dis(pic: 1,name: "Juice Wrld",),
                          onPressed: () {
                            if(c1==Colors.black){setState(() {
                              if(stop==0){c1 = Colors.white;
                              c2 = Colors.black;
                              c4 = Colors.black;
                              c3 = Colors.black;
                              player.play('j$sn1.mp3');stop=1;}
                            });}
                          },
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Expanded(
                      child: FlatButton(
                        color: c2,
                        child: dis(pic: 3,name: "The Weeknd",),
                        onPressed: () {
                          if(c2==Colors.black){setState(() {
                            if(stop==0){c2 = Colors.white;
                            c1 = Colors.black;
                            c4 = Colors.black;
                            c3 = Colors.black;
                            player.play('w$sn2.mp3');stop=1;}

                          });}
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        color: c3,
                        child: dis(pic: 4,name: "XXXTENTATION",),
                        onPressed: () {
                          if(c3==Colors.black){setState(() {
                            if(stop==0){c3 = Colors.white;
                            c1 = Colors.black;
                            c4 = Colors.black;
                            c2 = Colors.black;
                            player.play('x$sn3.mp3');stop=1;}

                          });}
                        },
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Expanded(
                      child: FlatButton(
                        color: c4,
                        child: dis(pic: 2,name: "Lil Wayne",),
                        onPressed: () {
                          if(c4==Colors.black){setState(() {
                            if(stop==0){c4 = Colors.white;
                            c1 = Colors.black;
                            c2 = Colors.black;
                            c3 = Colors.black;
                           player.play('l$sn4.mp3');stop=1;}

                          });}
                        },
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
