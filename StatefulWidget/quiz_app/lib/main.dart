import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  List<Map> Question=[
    {"Question":"who is the founder of microsoft",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":0},

     {"Question":"who is the founder of google",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":2},

     {"Question":"who is the founder of apple",
    "options":["bill gates","steve jobs","lary page","elon musk"],
    "correctans":1},

     {"Question":"who is the founder of meta",
    "options":["bill gates","steve jobs","mark zuckerberg","elon musk"],
    "correctans":0},

     {"Question":"who is the founder of spaceX",
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
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:Column(children: [
        const SizedBox(
        height: 50,
        width: 150,

      ),
      Row(children: [
          const Text("Question : "),
          Text("$queno / ${Question.length-1}"),
      ],),
        ],) 
    );
  }
}

