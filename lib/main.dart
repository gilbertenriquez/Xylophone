import 'package:flutter/material.dart';
//import the audioplayers: ^0.10.0 in the pubspec.yaml using pub get
//then import the'package:audioplayers/audio_cache.//dart'; in the main.dart
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
class XylophoneApp extends StatelessWidget {
//Creates an object for AudioCache class which has the code for the locally stored audio files and then through
// the object we are accessing the method which helps us in playing the audio.

// Also, one more thing that as you can see that we are directly mentioning the audio file name
// without folder name that is due to audioplayer package consider that audio files are stored inside the asset folder.
  void playsound(int playNumber){
    final player= AudioCache();
    //here is we put note$playnumber.wav all the songs that we upload at asses
    //we ca use it all and make our code shorter
    player.play('note$playNumber.wav');
  }
  Expanded buildKey({Color color, int playNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        //onpressed its function is once the user click the color or button it will press
        // and will play the sound by call the playNumber
        onPressed: (){
          playsound(playNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//color of the backgourd title in body
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('XYLOPHONE'),
//color of the backgourd title in app bar
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
//it will stretch bothside in of the phone
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
//using build key will make our code shorter u can see in the flutter documentation
            //calling the function playnumber we put a value like 1,2,3,4,5,6,7
              //so it will play different sound that we upload in the assets
              buildKey(color:Colors.red,playNumber:1),
              buildKey(color:Colors.orange,playNumber:2),
              buildKey(color:Colors.yellow,playNumber:3),
              buildKey(color:Colors.green,playNumber:4),
              buildKey(color:Colors.teal,playNumber:5),
              buildKey(color:Colors.blue,playNumber:6),
              buildKey(color:Colors.purple,playNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
