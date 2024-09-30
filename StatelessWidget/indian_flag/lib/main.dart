import "package:flutter/material.dart";

void main(){
   runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 300,
              color: Colors.orange,
            ),
            Container(
              height: 40,
              width: 300,
              color: Colors.white,
              child:Image.network("https://tse1.mm.bing.net/th?id=OIP.3nftDdnLbMop6GQS78hK7gHaHa&pid=Api&P=0&h=220"),
            ),
            Container(
              height: 40,
              width: 300,
              color: Colors.green,
            ),
            Container(
              margin:const EdgeInsets.only(left:0,top:0.0,right: 280.0,bottom: 100 ),
              height: 250,
              width: 20,
              color: Colors.grey,
            ),
          ],
        ),),
        )
    );
  }
}
