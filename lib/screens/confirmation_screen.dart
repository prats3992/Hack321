import 'package:flutter/material.dart';
import 'package:grrowe/screens/profile_data_screen.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Stack(
                children: [
                  Image.asset('assets/images/confirmation.png'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Congratulations!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),



            const Text(
              'You have successfully completed the \nFIRST step of Dating 💕',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),



            const SizedBox(height: 50),
            SizedBox(
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.teal,
                    backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: () {
                  // Navigate to the Profile ProfileDataScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileDataScreen()),
                  );
                },
                child: const SizedBox(
                  height: 60.0,
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
