import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
        body: SafeArea(
          child: Column(
            children: [
                 
                TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                  
                  onPressed: (){

                  playsound(1);
                  
                }, child: Text('')),

                TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange
                  ),
                  
                  onPressed: (){
                  playsound(2);
                  
                }, child: Text('')),

                TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow
                  ),

                  onPressed: (){
                  playsound(3);
                  
                }, child: Text('')),

                TextButton(
                
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.green
                  ),
                         
                  onPressed: (){
                  playsound(4);
                  
                }, child: Text('')),

                TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal
                  ),
                  
                  onPressed: (){
                  playsound(5);
                  
                }, child: Text('')),

              TextButton(
                
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                
                onPressed: (){
               playsound(6);
                
              }, child: Text('')),
              
               TextButton(
                
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple
                ),
                
                onPressed: (){
                 playsound(7);
                 
               }, child: Text('')),
            ],
          )
        ),
      ),
    );
  }
}
