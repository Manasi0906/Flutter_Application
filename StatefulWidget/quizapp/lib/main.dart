import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{
  List<Map> question=[
    {"Question":"Who is the founder of microsoft?",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":0},

     {"Question":"Who is the founder of google?",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":2},

     {"Question":"Who is the founder of apple?",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":1},

     {"Question":"Who is the founder of meta?",
    "options":["bill gates","steve jobs","mark zuckerberg","elon musk"],
    "correctans":0},

     {"Question":"Who is the founder of spaceX?",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":3},

    ];

    int queno=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",style: TextStyle(
          fontSize: 24,
          fontWeight:FontWeight.w900 ,
        ),),
        backgroundColor:const Color.fromARGB(255, 213, 184, 55),
        centerTitle: true,
      ),
      body:Column(children: [
        const SizedBox(
        height: 50,
        width: 380,

      ),
      Row(children: [
        const SizedBox(
          width: 140,
        ),
           Text("Question : ${queno+1} / ${question.length} ",style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),),
      
      ],),
      const SizedBox(
        height: 50,
      ),
      Text("${question[queno]["Question"]}",style: const TextStyle(fontSize:19,fontWeight:FontWeight.w500,color:Colors.purple)),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 380,
        height: 40,
      child:
      ElevatedButton(onPressed: (){}, child:Text("1.  ${question[queno]["options"][0]}",style: const TextStyle(fontSize:17,fontWeight:FontWeight.w400,backgroundColor:Colors.amber)),
      ),
      const SizedBox(
        height: 20,
      ),
       SizedBox(
        width: 380,
        height: 40,
      child: 
      ElevatedButton(onPressed: (){}, child:Text("2.  ${question[queno]["options"][1]}",style: const TextStyle(fontSize:17,fontWeight:FontWeight.w400))),
      ),
      const SizedBox(
        height: 20,
      ),
      SizedBox(
        width: 380,
        height: 40,
      child:
      ElevatedButton(onPressed: (){}, child:Text("3.  ${question[queno]["options"][2]}",style: const TextStyle(fontSize:17,fontWeight:FontWeight.w400))),
       ),
       const SizedBox(
        height:20,
      ),
      SizedBox(
      height: 40,
      width: 380,
      child:ElevatedButton(onPressed: (){}, child:Text("4.  ${question[queno]["options"][3]}",style: const TextStyle(fontSize:17,fontWeight:FontWeight.w400))),
       ),
      ],),
      floatingActionButton: FloatingActionButton(onPressed: () 
      { if(queno<question.length-1){
        queno++;
        setState(() {
        });}
      },
      backgroundColor: Colors.lightGreen,
      child: const Icon(Icons.forward),
      ),
    );
  }
}

