import 'package:flutter/material.dart';
import 'package:grrowe/screens/process_complete.dart';

class PaymentSuccessfulPage extends StatelessWidget {
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
              const SizedBox(height: 34),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                      width: 44.0),

                  const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                      width: 44.0), // Add a spacer for centering purposes
                ],
              ),


              const SizedBox(
                  height: 34.0),

              Center(
                child: SizedBox(
                  width: 214,
                  height: 214,
                  child: Stack(
                    children: [
                      Image.asset('assets/images/payment/payment.png'),
                    ],
                  ),
                ),
              ),



              const SizedBox(height: 18.0),

              const Center(
                child: SizedBox(
                  width: 310,
                  height: 64,
                  // color: Colors.white,
                  child: Center(
                    child: Text(
                      'Payment Successful!',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 24,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),


              const Center(
                child: SizedBox(
                  width: 310,
                  height: 64,
                  // color: Colors.white,
                  child: Center(
                    child: Text(
                      'Congratulations you are a \nPERMIUM User \nNow!',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 34),

              Center(
                child: SizedBox(
                  height: 78,
                  width: 138,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      // backgroundColor: Colors.teal,
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      // Navigate to the SignInScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProcessComplete()),
                      );
                    },
                    child: const SizedBox(
                      height: 60.0,
                      child: Center(
                        child: Text(
                          'Okay',
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
              ),


              const SizedBox(height: 64.0),
            ],
          ),
        ),
      ),
    );
  }
}
