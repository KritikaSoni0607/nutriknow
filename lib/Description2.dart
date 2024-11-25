import 'package:flutter/material.dart';
import 'package:nutri_know/login.dart';

class Description2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.white;
    double buttonHeight = 15.0; // Adjust the initial height of the button
    double buttonBottomMargin = 50.0; // Adjust the bottom margin for the button

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF85870), // First color
              Color(0xFFFD5A83),
              Color(0xFFF6809D),
              Color(0xFFF6809D),
              Color(0xFF8DC5E5),
              Color(0xFF9EDAF6), // Second color
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35.0), // Adjust the corner radius
                child: Container(
                  width: 300.0,
                  height: 200.0,
                  child: Image.asset(
                    'assets/images/Correct.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 50), // Adjust the spacing between the image and the text
              Text(
                'Recommendations',
                style: TextStyle(
                  color: textColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  'NutriKnow app provides personalized\n'
                      'product recommendations that empower consumers\n'
                      'to make healthier and informed choices.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
              ),
              SizedBox(height: 50), // Add space between the text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                  // Define the action for the button press
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: buttonHeight),
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  'NEXT >>>',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
