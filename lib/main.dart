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
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                 
                Expanded(
                  child: TextButton(
                    
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero,
                      side: BorderSide(color: Colors.red))
                    ),
                    
                    onPressed: (){
                  
                    playsound(1);
                    
                  }, child: Text('')),
                ),

                Expanded(
                  child: TextButton(
                    
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                      side: BorderSide(color: Colors.orange)
                    ),
                    
                    onPressed: (){
                    playsound(2);
                    
                  }, child: Text('')),
                ),

                Expanded(
                  child: TextButton(
                    
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                      side: BorderSide(color: Colors.yellow)
                    ),
                  
                    onPressed: (){
                    playsound(3);
                    
                  }, child: Text('')),
                ),

                Expanded(
                  child: TextButton(
                  
                    style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    side: BorderSide(color: Colors.green)
                    ),
                           
                    onPressed: (){
                    playsound(4);
                    
                  }, child: Text('')),
                ),

                Expanded(
                  child: TextButton(
                    
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    side: BorderSide(color: Colors.teal)
                    ),
                    
                    onPressed: (){
                    playsound(5);
                    
                  }, child: Text('')),
                ),

              Expanded(
                child: TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    side: BorderSide(color: Colors.blue)
                  ),
                  
                  onPressed: (){
                 playsound(6);
                  
                }, child: Text('')),
              ),
              
               Expanded(
                 child: TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    side: BorderSide(color: Colors.purple)
                  ),
                  
                  onPressed: (){
                   playsound(7);
                   
                 }, child: Text('')),
               ),
            ],
          )
        ),
      ),
    );
  }
}
