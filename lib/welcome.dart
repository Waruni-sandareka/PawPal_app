import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pawpal/register.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Change the background color here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/wave.svg', // Replace with your image path
              width: 200.0,
              height: 200.0,
            ),
            Text(
              "PawPal",
              style: TextStyle(
                fontSize: 37.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'poor',
                color: Colors.amber,
              ),
            ),
            Lottie.asset(
              'assets/animations/pet_hug.json', // Replace with the path to your Lottie file
              width: 1300,
              height: 300,
            ),
            SizedBox(height: 42.0),
            ElevatedButton(
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18.0, fontFamily: 'poor', fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber, // Change the button background color here
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 52.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
