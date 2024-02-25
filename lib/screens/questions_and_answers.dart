import 'package:flutter/material.dart';
import 'package:grrowe/screens/select_questions.dart';

import 'add_Q_and_A.dart';
import 'hobbies_and_interest_more.dart';

class QuestionsAnswers extends StatefulWidget {
  const QuestionsAnswers({Key? key}) : super(key: key);

  @override
  _QuestionsAnswers createState() => _QuestionsAnswers();
}

class _QuestionsAnswers extends State<QuestionsAnswers> {
  final Set<String> selectedInterests = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TextButton(
                      onPressed: () {
                        //Navigate to the next page
                      },
                      style: TextButton.styleFrom(
                        elevation: 0,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          // fontSize: (width <= 550) ? 13 : 17,
                        ),
                      ),
                      child: const Text(
                        "Skip",
                        textAlign: TextAlign.right,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),


              // const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    'Q&A',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      width: 50.0), // Add a spacer for centering purposes
                ],
              ),
              const SizedBox(height: 6.0),
              Row(
                children: [

                  const Expanded(
                    flex: 2,
                    child: Text(
                      'Answer these questions so that we can know you better and match the perfect one for you! ',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,

                      ),
                    ),
                  ),


                  Expanded(
                    flex: 1,
                    child: Image.asset(
                        'assets/images/question.png'),
                  ),
                ],
              ),




              //+ ADD button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the SignInScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SelectQuestions()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.red.shade200,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34.0),
                      ),
                      side: const BorderSide(color: Colors.black, width: 1.0),
                      elevation: 4.0,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 14.0,
                        horizontal: 14.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                            size: 24.0,
                          ),
                          Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          // SizedBox(width: 8.0),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(height: 64.0),
              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       // backgroundColor: Colors.teal,
              //       backgroundColor: const Color(0xFF1DB7B0),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8.0),
              //       ),
              //     ),
              //     onPressed: () {
              //       // Navigate to the SignInScreen
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => SelectQuestions()),
              //       );
              //     },
              //     child: const SizedBox(
              //       height: 60.0,
              //       child: Center(
              //         child: Text(
              //           'See more questions',
              //           style: TextStyle(
              //             fontSize: 20.0,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),


              // const SizedBox(height: 24.0),



              // SizedBox(
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //       // backgroundColor: Colors.teal,
              //       backgroundColor: const Color(0xFFFFFFFF),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(8.0),
              //       ),
              //     ),
              //     onPressed: () {



              //       // Navigate to the SignInScreen



              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) => AddQuestionAnswer()),
              //       );
              //     },
              //     child: const SizedBox(
              //       height: 60.0,
              //       child: Center(
              //         child: Text(
              //           'Next',
              //           style: TextStyle(

              //             color: Color(0x8D5B64AD),
              //             fontSize: 20.0,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),



              // const SizedBox(height: 34.0),


            ],
          ),
        ),
      ),
    );
  }
}
