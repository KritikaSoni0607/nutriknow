import 'package:flutter/material.dart';
import 'Description2.dart';
class Description1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color textColor = Color(0xFFF0ECF5);

    double buttonHeight = 15.0;
    double buttonBottomMargin = 0.0;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF85870), // First color
              Color(0xFFF85870),
              Color(0xFFFA6C8E),
              Color(0xFFF6809D),
              Color(0xFFB0DBEF),
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
                  height: 250.0,
                  child: Image.asset(
                    'assets/images/Products.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Product Analysis',
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
                  'NutriKnow app provides in-depth product analysis,\n '
                      'detailed insights into the nutritional and ingredient quality of the\n '
                      'products, empowering users to make informed and healthier choices.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold, // Make the text below bold
                  ),
                ),
              ),
              SizedBox(height: 30), // Adjust the space between image and text
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Description2()),
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
                  'NEXT>>>',
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
