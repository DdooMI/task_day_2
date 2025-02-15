import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  _quizPageState createState() => _quizPageState();
}

class _quizPageState extends State<Task1> {
  List<Map<String, dynamic>> questions = [
    {"question": "Do fish live on land?", "answer": false},
    {"question": "Does the sun rise in the west?", "answer": false},
    {"question": "Is an octopus a sea creature?", "answer": true},
    {"question": "Do humans have three eyes?", "answer": false},
    {"question": "Is gold heavier than water?", "answer": true},
    {
      "question": "Can humans breathe underwater without equipment?",
      "answer": false
    },
    {"question": "Is the moon smaller than the Earth?", "answer": true}
  ];

  int questionIndex = 0;
  List userAnswers = [];
  List answers = [];
  void checkAnswer(bool userAnswer) {
    setState(() {
      if (questionIndex < questions.length) {
        userAnswers.add(userAnswer);
        answers.add(userAnswer == questions[questionIndex]['answer']);
        questionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Number of Questions ${questions.length}",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: answers
                    .map((q) => Icon(
                          q ? Icons.check : Icons.close,
                          color: q ? Colors.green : Colors.red,
                        ))
                    .toList(),
              ),
              questionIndex > questions.length - 1
                  ? Text(
                      "Your score is ${answers.where((value) => value).toList().length}")
                  : Column(
                      children: [
                        Text("Question ${questionIndex + 1}"),
                        Text(questions[questionIndex]['question']),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => checkAnswer(true),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green),
                              child: Text(
                                "Yes",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                                onPressed: () => checkAnswer(false),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                child: Text(
                                  "No",
                                  style: TextStyle(color: Colors.black),
                                ))
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
