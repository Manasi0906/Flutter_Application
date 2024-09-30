import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleApp());
}

class ToggleApp extends StatefulWidget{
  const ToggleApp({super.key});

  @override
  State createState() => _ToggleAppState();
}

class _ToggleAppState extends State{
  bool changeColor=false;
  @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("ToggleApp"),
            backgroundColor: Colors.blue,
            centerTitle: true,
          ),
          body:Center (child: Container(
            height: 150,
            width: 150,
            color: changeColor?Colors.cyan:Colors.orange,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed:(){
              if(changeColor==true){
                changeColor=false;
              }
              else{
                changeColor=true;
              }
              setState(() {});
            },
            backgroundColor: Colors.pinkAccent,
            child: const Icon(Icons.app_blocking),
            ),
          ),
      );
    }
}