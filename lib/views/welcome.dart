import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pawpal/views/login.dart';
import 'package:pawpal/views/register.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Set the app bar to null to remove it
      body: Container(
        color: Colors.white, // Change the background color here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align children to the top
          children: [
            Container(
              margin: EdgeInsets.zero,
              alignment: Alignment.topCenter, // Align the child to the top
              child: SvgPicture.asset(
                'assets/images/wave2.svg', // Replace with your image path
                width: 500.0,
                height: 170.0,
              ),
            ),
            Text(
              "BmiCal",
              style: TextStyle(
                fontSize: 37.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'poor',
                color: Colors.black,
              ),
            ),
            Lottie.asset(
              'assets/animations/welcome.json',
              // Replace with the path to your Lottie file
              width: 1300,
              height: 350,
            ),
            SizedBox(height: 42.0),
            ElevatedButton(
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent, // Change the button background color here
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 52.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

int hexColor(String color){
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}
