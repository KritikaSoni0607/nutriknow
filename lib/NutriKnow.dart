import 'package:flutter/material.dart';
import 'Description1.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.white;
    double buttonHeight = 15.0; // Adjust the initial height of the button

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
              Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.cover,
                    width: 250.0,
                    height: 250.0,
                  ),
                ),
              ),
              SizedBox(height: 45), // Adjust the spacing between the image and the text
              Text(
                'Nutriknow',
                style: TextStyle(
                  color: textColor,
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  'Welcome To The NutriKnow App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold, // Make the text below bold
                  ),
                ),
              ),
              SizedBox(height: 75), // Add space between text and button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Description1()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: buttonHeight),
                  backgroundColor: Colors.yellow,
                ),
                child: Text(
                  'Next>>>',
                  style: TextStyle(
                    color: Colors.black,
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
