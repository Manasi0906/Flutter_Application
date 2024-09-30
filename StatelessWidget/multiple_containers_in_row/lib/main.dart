import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("ContainerApp"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Container(
            height: 20,
            width: 20,
            color: Colors.amber,
          ),
          Container(
            height: 20,
            width: 20,
            color: Colors.red,
          ),
          Container(
            height: 20,
            width: 20,
            color: Colors.brown,
          ),
            ]
          ),
        ),
      ),
    );
  }
}