class QuizQuestion {
  final String id;
  final String question;
  final List<String> options;
  final int correctOption;
  final String category;
  final String difficulty;

  QuizQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.correctOption,
    required this.category,
    required this.difficulty,
  });
}

class QuizData {
  static final List<QuizQuestion> questions = [
    // Science Questions
    QuizQuestion(
      id: 'sci_001',
      question: 'What is the chemical symbol for gold?',
      options: const ['Go', 'Gd', 'Au', 'Ag'],
      correctOption: 2,
      category: 'Science',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'sci_002',
      question: 'Which planet is known as the Red Planet?',
      options: const ['Venus', 'Mars', 'Jupiter', 'Saturn'],
      correctOption: 1,
      category: 'Science',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'sci_003',
      question: 'What is the speed of light in vacuum?',
      options: const ['300,000 km/s', '299,792,458 m/s', '186,000 miles/s', 'All of the above'],
      correctOption: 3,
      category: 'Science',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'sci_004',
      question: 'Which gas makes up approximately 78% of Earth\'s atmosphere?',
      options: const ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Argon'],
      correctOption: 2,
      category: 'Science',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'sci_005',
      question: 'What is the powerhouse of the cell?',
      options: const ['Nucleus', 'Ribosome', 'Mitochondria', 'Endoplasmic Reticulum'],
      correctOption: 2,
      category: 'Science',
      difficulty: 'Easy',
    ),

    // History Questions
    QuizQuestion(
      id: 'his_001',
      question: 'In which year did World War II end?',
      options: const ['1944', '1945', '1946', '1947'],
      correctOption: 1,
      category: 'History',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'his_002',
      question: 'Who was the first person to walk on the moon?',
      options: const ['Buzz Aldrin', 'Neil Armstrong', 'John Glenn', 'Alan Shepard'],
      correctOption: 1,
      category: 'History',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'his_003',
      question: 'The Great Wall of China was primarily built during which dynasty?',
      options: const ['Tang Dynasty', 'Song Dynasty', 'Ming Dynasty', 'Qing Dynasty'],
      correctOption: 2,
      category: 'History',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'his_004',
      question: 'Which ancient civilization built Machu Picchu?',
      options: const ['Aztec', 'Maya', 'Inca', 'Olmec'],
      correctOption: 2,
      category: 'History',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'his_005',
      question: 'The French Revolution began in which year?',
      options: const ['1789', '1776', '1792', '1799'],
      correctOption: 0,
      category: 'History',
      difficulty: 'Medium',
    ),

    // Geography Questions
    QuizQuestion(
      id: 'geo_001',
      question: 'What is the capital of Australia?',
      options: const ['Sydney', 'Melbourne', 'Canberra', 'Perth'],
      correctOption: 2,
      category: 'Geography',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'geo_002',
      question: 'Which is the longest river in the world?',
      options: const ['Amazon River', 'Nile River', 'Yangtze River', 'Mississippi River'],
      correctOption: 1,
      category: 'Geography',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'geo_003',
      question: 'Mount Everest is located in which mountain range?',
      options: const ['Andes', 'Alps', 'Himalayas', 'Rocky Mountains'],
      correctOption: 2,
      category: 'Geography',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'geo_004',
      question: 'Which country has the most natural lakes?',
      options: const ['Russia', 'United States', 'Canada', 'Finland'],
      correctOption: 2,
      category: 'Geography',
      difficulty: 'Hard',
    ),
    QuizQuestion(
      id: 'geo_005',
      question: 'The Sahara Desert is primarily located in which continent?',
      options: const ['Asia', 'Africa', 'Australia', 'South America'],
      correctOption: 1,
      category: 'Geography',
      difficulty: 'Easy',
    ),

    // Sports Questions
    QuizQuestion(
      id: 'spo_001',
      question: 'How many players are on a basketball team on the court at one time?',
      options: const ['4', '5', '6', '7'],
      correctOption: 1,
      category: 'Sports',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'spo_002',
      question: 'Which sport is known as "The Beautiful Game"?',
      options: const ['Basketball', 'Tennis', 'Football/Soccer', 'Cricket'],
      correctOption: 2,
      category: 'Sports',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'spo_003',
      question: 'In which sport would you perform a slam dunk?',
      options: const ['Volleyball', 'Basketball', 'Tennis', 'Badminton'],
      correctOption: 1,
      category: 'Sports',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'spo_004',
      question: 'How often are the Summer Olympic Games held?',
      options: const ['Every 2 years', 'Every 3 years', 'Every 4 years', 'Every 5 years'],
      correctOption: 2,
      category: 'Sports',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'spo_005',
      question: 'What is the maximum score possible in ten-pin bowling?',
      options: const ['200', '250', '300', '350'],
      correctOption: 2,
      category: 'Sports',
      difficulty: 'Medium',
    ),

    // Technology Questions
    QuizQuestion(
      id: 'tech_001',
      question: 'What does "WWW" stand for?',
      options: const ['World Wide Web', 'World Wide Windows', 'Web Wide World', 'Wide World Web'],
      correctOption: 0,
      category: 'Technology',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'tech_002',
      question: 'Who founded Microsoft?',
      options: const ['Steve Jobs', 'Bill Gates', 'Mark Zuckerberg', 'Larry Page'],
      correctOption: 1,
      category: 'Technology',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'tech_003',
      question: 'What does "CPU" stand for?',
      options: const ['Computer Processing Unit', 'Central Processing Unit', 'Central Program Unit', 'Computer Program Unit'],
      correctOption: 1,
      category: 'Technology',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'tech_004',
      question: 'Which programming language is known for its use in web development and has a coffee-related name?',
      options: const ['Python', 'JavaScript', 'Java', 'C++'],
      correctOption: 2,
      category: 'Technology',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'tech_005',
      question: 'What does "AI" commonly stand for in technology?',
      options: const ['Automated Intelligence', 'Artificial Intelligence', 'Advanced Intelligence', 'Augmented Intelligence'],
      correctOption: 1,
      category: 'Technology',
      difficulty: 'Easy',
    ),

    // Literature Questions
    QuizQuestion(
      id: 'lit_001',
      question: 'Who wrote the novel "1984"?',
      options: const ['George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'H.G. Wells'],
      correctOption: 0,
      category: 'Literature',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'lit_002',
      question: 'Which Shakespeare play features the character Hamlet?',
      options: const ['Macbeth', 'Othello', 'Hamlet', 'King Lear'],
      correctOption: 2,
      category: 'Literature',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'lit_003',
      question: 'Who wrote "Pride and Prejudice"?',
      options: const ['Charlotte Brontë', 'Emily Brontë', 'Jane Austen', 'George Eliot'],
      correctOption: 2,
      category: 'Literature',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'lit_004',
      question: 'In which novel would you find the character Atticus Finch?',
      options: const ['The Great Gatsby', 'To Kill a Mockingbird', 'Of Mice and Men', 'The Catcher in the Rye'],
      correctOption: 1,
      category: 'Literature',
      difficulty: 'Medium',
    ),
    QuizQuestion(
      id: 'lit_005',
      question: 'Who wrote the "Harry Potter" series?',
      options: const ['J.R.R. Tolkien', 'C.S. Lewis', 'J.K. Rowling', 'Roald Dahl'],
      correctOption: 2,
      category: 'Literature',
      difficulty: 'Easy',
    ),

    // Mathematics Questions
    QuizQuestion(
      id: 'math_001',
      question: 'What is the value of π (pi) approximately?',
      options: const ['3.14159', '2.71828', '1.41421', '1.61803'],
      correctOption: 0,
      category: 'Mathematics',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'math_002',
      question: 'What is 12 × 12?',
      options: const ['124', '144', '134', '154'],
      correctOption: 1,
      category: 'Mathematics',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'math_003',
      question: 'What is the square root of 64?',
      options: const ['6', '7', '8', '9'],
      correctOption: 2,
      category: 'Mathematics',
      difficulty: 'Easy',
    ),
    QuizQuestion(
      id: 'math_004',
      question: 'What is the formula for the area of a circle?',
      options: const ['πr²', '2πr', 'πd', 'r²'],
      correctOption: 0,
      category: 'Mathematics',
      difficulty: 'Medium',
    ),
  ]; 


}