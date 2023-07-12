import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pawpal/onboard.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Change the background color here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PawPal",
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'poor',
              ),
            ),
            Lottie.asset(
              'assets/animations/pet_hug.json', // Replace with the path to your Lottie file
              width: 900,
              height: 350,
            ),
            SizedBox(height: 42.0),
            ElevatedButton(
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18.0),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber, // Change the button background color here
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
