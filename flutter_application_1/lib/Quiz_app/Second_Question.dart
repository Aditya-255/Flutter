import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Quiz_app/Question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
//create flutter app to read api to dispaly dogs brief and display dog image 
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz Question')),
      // body: ListView.builder(itemBuilder: )
      //  QuizQuestion(id: id, question: question, options: options, correctOption: correctOption, category: category, difficulty: difficulty)
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Questions", style: TextStyle(fontSize: 24)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('option 1')),
              ElevatedButton(onPressed: () {}, child: Text('option 2')),
              ElevatedButton(onPressed: () {}, child: Text('option 3')),
              ElevatedButton(onPressed: () {}, child: Text('option 4')),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: Text('Next')),
        ],
      ),
    );
  }
}
