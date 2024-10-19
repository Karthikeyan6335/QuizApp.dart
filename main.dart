import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.teal[50],
      ),
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final List<Map<String, dynamic>> _questions = [    
  {
    'question': 'What is the largest planet in our solar system?',
    'answers': ['Jupiter', 'Saturn', 'Earth', 'Mars'],
    'correctAnswer': 'Jupiter'
  },
  {
    'question': 'Which country is known as the "Land of the Rising Sun"?',
    'answers': ['China', 'Japan', 'South Korea', 'Thailand'],
    'correctAnswer': 'Japan'
  },
  {
    'question': 'Who invented the telephone?',
    'answers': ['Alexander Graham Bell', 'Thomas Edison', 'Nikola Tesla', 'Albert Einstein'],
    'correctAnswer': 'Alexander Graham Bell'
  },
  {
    'question': 'Which ocean is the largest in the world?',
    'answers': ['Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean'],
    'correctAnswer': 'Pacific Ocean'
  },
  {
    'question': 'Which country has the most natural lakes?',
    'answers': ['Canada', 'Russia', 'United States', 'India'],
    'correctAnswer': 'Canada'
  },
  {
    'question': 'What is the capital of Australia?',
    'answers': ['Sydney', 'Melbourne', 'Canberra', 'Brisbane'],
    'correctAnswer': 'Canberra'
  },
  {
    'question': 'Which is the smallest country in the world?',
    'answers': ['Vatican City', 'Monaco', 'San Marino', 'Liechtenstein'],
    'correctAnswer': 'Vatican City'
  },
  {
    'question': 'Who painted the Mona Lisa?',
    'answers': ['Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Claude Monet'],
    'correctAnswer': 'Leonardo da Vinci'
  },
  {
    'question': 'Which continent is known as the "Dark Continent"?',
    'answers': ['Asia', 'Africa', 'South America', 'Australia'],
    'correctAnswer': 'Africa'
  },
  {
    'question': 'Which is the longest river in the world?',
    'answers': ['Amazon River', 'Nile River', 'Yangtze River', 'Mississippi River'],
    'correctAnswer': 'Nile River'
  },
  {
    'question': 'What is the capital city of Canada?',
    'answers': ['Toronto', 'Ottawa', 'Vancouver', 'Montreal'],
    'correctAnswer': 'Ottawa'
  },
  {
    'question': 'Which desert is the largest in the world?',
    'answers': ['Sahara Desert', 'Arabian Desert', 'Gobi Desert', 'Kalahari Desert'],
    'correctAnswer': 'Sahara Desert'
  },
  {
    'question': 'Which city is known as the "Big Apple"?',
    'answers': ['Los Angeles', 'New York City', 'Chicago', 'Miami'],
    'correctAnswer': 'New York City'
  },
  {
    'question': 'Which is the tallest mountain in the world?',
    'answers': ['K2', 'Kangchenjunga', 'Mount Everest', 'Lhotse'],
    'correctAnswer': 'Mount Everest'
  },
  {
    'question': 'What is the currency of Japan?',
    'answers': ['Yen', 'Won', 'Dollar', 'Rupee'],
    'correctAnswer': 'Yen'
  },
  {
    'question': 'Which famous landmark is located in Paris?',
    'answers': ['Eiffel Tower', 'Colosseum', 'Statue of Liberty', 'Big Ben'],
    'correctAnswer': 'Eiffel Tower'
  },
  {
    'question': 'What is the largest continent by area?',
    'answers': ['Asia', 'Africa', 'North America', 'Europe'],
    'correctAnswer': 'Asia'
  },
  {
    'question': 'Which country is famous for the Great Wall?',
    'answers': ['India', 'China', 'Japan', 'Vietnam'],
    'correctAnswer': 'China'
  },
  {
    'question': 'What is the primary language spoken in Brazil?',
    'answers': ['Spanish', 'English', 'Portuguese', 'French'],
    'correctAnswer': 'Portuguese'
  },
  {
    'question': 'Which country is known for its pyramids?',
    'answers': ['Greece', 'Mexico', 'Egypt', 'India'],
    'correctAnswer': 'Egypt'
  },
  
  {
    'question': 'Who was the first Prime Minister of independent India?',
    'answers': ['Jawaharlal Nehru', 'Mahatma Gandhi', 'Indira Gandhi', 'Rajendra Prasad'],
    'correctAnswer': 'Jawaharlal Nehru'
  },
  {
    'question': 'What is the national animal of India?',
    'answers': ['Lion', 'Bengal Tiger', 'Elephant', 'Peacock'],
    'correctAnswer': 'Bengal Tiger'
  },
  {
    'question': 'Which is the largest state in India by area?',
    'answers': ['Maharashtra', 'Uttar Pradesh', 'Madhya Pradesh', 'Rajasthan'],
    'correctAnswer': 'Rajasthan'
  },
  {
    'question': 'Who is known as the "Missile Man of India"?',
    'answers': ['Homi J. Bhabha', 'Vikram Sarabhai', 'A. P. J. Abdul Kalam', 'S. Chandrasekhar'],
    'correctAnswer': 'A. P. J. Abdul Kalam'
  },
  {
    'question': 'Which Indian city is known as the "Silicon Valley of India"?',
    'answers': ['Mumbai', 'Hyderabad', 'Pune', 'Bengaluru'],
    'correctAnswer': 'Bengaluru'
  },
  {
    'question': 'Which river is considered the holiest in India?',
    'answers': ['Yamuna', 'Narmada', 'Ganga', 'Godavari'],
    'correctAnswer': 'Ganga'
  },
  {
    'question': 'In which year did India become a republic?',
    'answers': ['1947', '1950', '1952', '1965'],
    'correctAnswer': '1950'
  },
  {
    'question': 'Which is the national sport of India?',
    'answers': ['Cricket', 'Hockey', 'Football', 'Kabaddi'],
    'correctAnswer': 'Hockey'
  },
  {
    'question': 'Who wrote the Indian national anthem?',
    'answers': ['Rabindranath Tagore', 'Bankim Chandra Chatterjee', 'Sarojini Naidu', 'Subramania Bharati'],
    'correctAnswer': 'Rabindranath Tagore'
  },
  {
    'question': 'Which is the largest port in India?',
    'answers': ['Mumbai Port', 'Chennai Port', 'Kandla Port', 'Vishakhapatnam Port'],
    'correctAnswer': 'Mumbai Port'
  },
  {
    'question': 'Where are the Ajanta and Ellora Caves located?',
    'answers': ['Maharashtra', 'Karnataka', 'Uttar Pradesh', 'Gujarat'],
    'correctAnswer': 'Maharashtra'
  },
  {
    'question': 'Who was the first woman to become the Prime Minister of India?',
    'answers': ['Indira Gandhi', 'Sarojini Naidu', 'Sushma Swaraj', 'Pratibha Patil'],
    'correctAnswer': 'Indira Gandhi'
  },
  {
    'question': 'Which city is known as the "Pink City" of India?',
    'answers': ['Udaipur', 'Jaipur', 'Jodhpur', 'Jaisalmer'],
    'correctAnswer': 'Jaipur'
  },
  {
    'question': 'What is the national tree of India?',
    'answers': ['Peepal', 'Neem', 'Banyan', 'Mango'],
    'correctAnswer': 'Banyan'
  },
  {
    'question': 'Which is the smallest state in India by area?',
    'answers': ['Goa', 'Sikkim', 'Tripura', 'Meghalaya'],
    'correctAnswer': 'Goa'
  },
  {
    'question': 'In which year was the Indian Space Research Organisation (ISRO) established?',
    'answers': ['1969', '1975', '1980', '1992'],
    'correctAnswer': '1969'
  },
  {
    'question': 'Which Indian state is known for its tea gardens?',
    'answers': ['Punjab', 'Assam', 'Kerala', 'Rajasthan'],
    'correctAnswer': 'Assam'
  },
  {
    'question': 'Who was the first Indian to win a Nobel Prize?',
    'answers': ['C. V. Raman', 'Rabindranath Tagore', 'Hargobind Khorana', 'Mother Teresa'],
    'correctAnswer': 'Rabindranath Tagore'
  },
  {
    'question': 'Which Indian festival is also known as the "Festival of Lights"?',
    'answers': ['Holi', 'Diwali', 'Dussehra', 'Eid'],
    'correctAnswer': 'Diwali'
  },
  {
    'question': 'Where is India’s highest mountain, Kangchenjunga, located?',
    'answers': ['Sikkim', 'Himachal Pradesh', 'Jammu and Kashmir', 'Uttarakhand'],
    'correctAnswer': 'Sikkim'
  }




  ];

  int _currentQuestion = 0;
  bool _showResult = false;
  bool _isCorrect = false;
  bool _answerSelected = false; // Track if an answer has been selected
  int _correctAnswers = 0;
  int _wrongAnswers = 0;

  void _checkAnswer(String answer) {
    setState(() {
      if (!_answerSelected) { // Check if an answer has already been selected
        _isCorrect = answer == _questions[_currentQuestion]['correctAnswer'];
        _showResult = true;
        _answerSelected = true; // Disable further clicks

        // Increment the counters based on the correctness of the answer
        if (_isCorrect) {
          _correctAnswers++;
        } else {
          _wrongAnswers++;
        }
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _currentQuestion = (_currentQuestion + 1) % _questions.length;
      _showResult = false;
      _answerSelected = false; // Reset for the next question
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App', semanticsLabel: 'centered Title'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,  // Center the content horizontally
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.deepPurpleAccent, width: 2),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Center( // Center the question text
                child: Text(
                  _questions[_currentQuestion]['question'],
                  style: TextStyle(fontSize: 24, color: Colors.deepPurple),
                  textAlign: TextAlign.center,  // Center the text inside the Text widget
                ),
              ),
            ),
            SizedBox(height: 20),
            ..._questions[_currentQuestion]['answers'].map<Widget>((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[100],
                    foregroundColor: Colors.deepPurple,
                    side: BorderSide(color: Colors.deepPurple, width: 2),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: _answerSelected ? null : () => _checkAnswer(answer), // Disable button after selecting an answer
                  child: Text(answer, style: TextStyle(fontSize: 18)),
                ),
              );
            }).toList(),
            if (_showResult)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  _isCorrect ? 'Correct!' : 'Wrong!',
                  style: TextStyle(
                    fontSize: 24,
                    color: _isCorrect ? Colors.green : Colors.red,
                  ),
                ),
              ),
            if (_showResult)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 249, 252, 252),
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                ),
                onPressed: _nextQuestion,
                child: Text('Next Question', style: TextStyle(fontSize: 18)),
              ),
            SizedBox(height: 20),
            Text(
              'Correct Answers: $_correctAnswers',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            Text(
              'Wrong Answers: $_wrongAnswers',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
