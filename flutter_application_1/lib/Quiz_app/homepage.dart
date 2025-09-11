import 'package:flutter/material.dart';

class Quiz {
  final int id;
  final String question;
  final List<String> opt;
  final int currIndx;

  Quiz({
    required this.id,
    required this.question,
    required this.opt,
    required this.currIndx,
  });
}

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Quiz> quizData = [
    Quiz(
      id: 1,
      question: 'What is the capital of India?',
      opt: ['New Delhi', 'Mumbai', 'Kolkata', 'Chennai'],
      currIndx: 0,
    ),
    Quiz(
      id: 2,
      question: 'Which planet is known as the Red Planet?',
      opt: ['Venus', 'Mars', 'Jupiter', 'Saturn'],
      currIndx: 1,
    ),
    Quiz(
      id: 3,
      question: 'Who wrote the Indian National Anthem?',
      opt: [
        'Rabindranath Tagore',
        'Bankim Chandra Chatterjee',
        'Sarojini Naidu',
        'Mahatma Gandhi',
      ],
      currIndx: 0,
    ),
    Quiz(
      id: 4,
      question: 'Which is the largest ocean on Earth?',
      opt: ['Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean'],
      currIndx: 2,
    ),
    Quiz(
      id: 5,
      question: 'What is the chemical symbol of Water?',
      opt: ['O2', 'CO2', 'H2O', 'NaCl'],
      currIndx: 2,
    ),
    Quiz(
      id: 6,
      question: 'Which animal is known as the Ship of the Desert?',
      opt: ['Camel', 'Horse', 'Elephant', 'Donkey'],
      currIndx: 0,
    ),
    Quiz(
      id: 7,
      question: 'Who is known as the Father of the Nation in India?',
      opt: [
        'Mahatma Gandhi',
        'Jawaharlal Nehru',
        'Sardar Patel',
        'Subhash Chandra Bose',
      ],
      currIndx: 0,
    ),
    Quiz(
      id: 8,
      question: 'Which gas is essential for breathing?',
      opt: ['Carbon Dioxide', 'Oxygen', 'Nitrogen', 'Helium'],
      currIndx: 1,
    ),
    Quiz(
      id: 9,
      question: 'Which festival is called the Festival of Lights?',
      opt: ['Holi', 'Diwali', 'Eid', 'Christmas'],
      currIndx: 1,
    ),
    Quiz(
      id: 10,
      question: 'How many players are there in a cricket team?',
      opt: ['9', '10', '11', '12'],
      currIndx: 2,
    ),
    Quiz(
      id: 11,
      question: 'Which organ pumps blood through the body?',
      opt: ['Lungs', 'Heart', 'Liver', 'Kidney'],
      currIndx: 1,
    ),
    Quiz(
      id: 12,
      question: 'Which is the smallest continent?',
      opt: ['Europe', 'Australia', 'Asia', 'Africa'],
      currIndx: 1,
    ),
    Quiz(
      id: 13,
      question: 'Who invented the light bulb?',
      opt: ['Thomas Edison', 'Albert Einstein', 'Nikola Tesla', 'Isaac Newton'],
      currIndx: 0,
    ),
    Quiz(
      id: 14,
      question: 'Which is the national fruit of India?',
      opt: ['Banana', 'Mango', 'Apple', 'Orange'],
      currIndx: 1,
    ),
    Quiz(
      id: 15,
      question: 'What is the currency of Japan?',
      opt: ['Dollar', 'Yen', 'Euro', 'Won'],
      currIndx: 1,
    ),
    Quiz(
      id: 16,
      question: 'Which instrument is used to measure temperature?',
      opt: ['Barometer', 'Thermometer', 'Hygrometer', 'Speedometer'],
      currIndx: 1,
    ),
    Quiz(
      id: 17,
      question: 'Which planet is closest to the Sun?',
      opt: ['Venus', 'Mercury', 'Mars', 'Earth'],
      currIndx: 1,
    ),
    Quiz(
      id: 18,
      question: 'What is the national flower of India?',
      opt: ['Lotus', 'Rose', 'Jasmine', 'Sunflower'],
      currIndx: 0,
    ),
    Quiz(
      id: 19,
      question:
          'Which vitamin is produced when our skin is exposed to sunlight?',
      opt: ['Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin B12'],
      currIndx: 2,
    ),
    Quiz(
      id: 20,
      question: 'Who was the first President of India?',
      opt: [
        'Dr. Rajendra Prasad',
        'Dr. S. Radhakrishnan',
        'Indira Gandhi',
        'Jawaharlal Nehru',
      ],
      currIndx: 0,
    ),
  ];

  int currIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("${currIndx + 1}/${quizData.length}"), Text("5")],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('${quizData[currIndx].question}'),
            for (int i = 0; i < quizData[currIndx].opt.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text('${quizData[currIndx].opt[i]}'),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: currIndx == 0
                      ? null
                      : () {
                          if (currIndx > 0) currIndx--;
                          setState(() {});
                        },
                  child: Text('Prev'),
                ),
                ElevatedButton(
                  onPressed: currIndx == quizData.length - 1
                      ? null
                      : () {
                          if (currIndx < quizData.length - 1) currIndx++;
                          setState(() {});
                        },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
