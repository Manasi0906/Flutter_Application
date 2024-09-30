import 'package:flutter/material.dart';

void main() {
  runApp(const CrickApp());
}

class CrickApp extends StatefulWidget {
  const CrickApp({super.key});
  State createState() => _CrickAppState();
}

class _CrickAppState extends State{
  List Playerphoto=["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzm7X2PZmICzT_ZDP5pMr8_ODz9G428UWlw&s",
"https://st.adda247.com/https://miro.medium.com/v2/resize:fit:850/1*Iel8v9DdK9swIygM9S6aOw.jpeg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJe55lO0MQ6SAXDXBygeCA-BPb0S9A_y-epDssxmZWVjplFq5rQ2kD_M65gqewvZo9L74&usqp=CAU",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNZWDcpDtpYT8cVEtV243bnTx1AURImGCtQQ&s",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_UGA8Zjs0SH3jr0I6zWuIYu9Bwc5Q_sAAFg&s"];

List Playername=["Virat Kohli","MS Dhoni","bumrahh","Ravindra Jadeja","Hardik Pandya"];
int index1=0;
int index2=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar:AppBar(
        title: const Text("Cricket Players"),
        backgroundColor:Colors.lightBlue,
        centerTitle: true,
      ),
      body:Center ( child:Column(
        children: [
        Container(
        height: 250,
        width: 250,
        color: Colors.white,
        child: Image.network(Playerphoto[index1]),
        margin:const EdgeInsets.only(top:100 ),
      ),
      Text(Playername[index2]),
      ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(index1<Playerphoto.length-1){
            index1++;
            index2++;
          }else{
            index1=0;
            index2=0;
          }
          setState(() {
          });
        },
        backgroundColor: Colors.pinkAccent,
        child: const Text("Next"),
        ),
      ),
    );
  }
}
