import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_quizz/question.dart';
import 'package:flutter_codigo_quizz/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[];
  QuizBrain quizBrain=new QuizBrain();

  void checkAnswer(bool respuestaUsuario){
    bool correctAnswer=quizBrain.getQuestionAnswer();
    if(quizBrain.isFinished() ==true){
      Alert(context: context,
          title: "Juego terminado",
          desc: "Tú terminaste el juego").show();
      quizBrain.reset();
      scoreKeeper=[];
      setState(() {
      });
    }else{
      if(correctAnswer == respuestaUsuario){
        scoreKeeper.add(
            Icon(Icons.check, color: Colors.greenAccent,)
        );
      }else{
        scoreKeeper.add(
            Icon(Icons.close, color: Colors.redAccent,)
        );
      }
      quizBrain.nextQuestion();
      setState(() {
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff071426),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child:  Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.green,
                  child: Text("Verdadero"),
                  onPressed: (){
                   checkAnswer(true);

                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FlatButton(
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  child: Text("Falso"),
                  onPressed: (){
                   checkAnswer(false);

                  },
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            ),
          ],
        ),
      ),
    );
  }
}
