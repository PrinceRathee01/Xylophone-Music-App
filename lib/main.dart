import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  
  void playsound(int soundnumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }
  
Expanded buildkey({int soundnumber=1, Color? color}){
  return Expanded(
                  child: TextButton(
                    
                    style: TextButton.styleFrom(
                      backgroundColor: color,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero,
                      side: BorderSide(color: color!))
                    ),
                    
                    onPressed: (){
                  
                    playsound(soundnumber);
                    
                  }, child: Text('')),
                );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                 
                 buildkey(soundnumber: 1, color: Colors.red),
                 buildkey(soundnumber: 2, color: Colors.orange),
                 buildkey(soundnumber: 3, color: Colors.yellow),
                 buildkey(soundnumber: 4, color: Colors.green),
                 buildkey(soundnumber: 5, color: Colors.teal),
                 buildkey(soundnumber: 6, color: Colors.blue),
                 buildkey(soundnumber: 7, color: Colors.purple),
                
            ],
          )
        ),
      ),
    );
  }
}
