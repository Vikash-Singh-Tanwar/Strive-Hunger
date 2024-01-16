import 'package:flutter/material.dart';
import 'home.dart';
import 'cooked.dart';
import 'uncooked.dart';
import 'fruitsandveg.dart';
import 'others.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/cooked': (context) => CookedPage(),
        '/uncooked': (context) => UncookedPage(),
        '/fruitsandveg': (context) => FruitsAndVegPage(),
        '/others': (context) => OthersPage(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://rb.gy/1p76ki',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Strive',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add phone icon here
                  Icon(
                    Icons.phone,
                    color: Colors.purple,
                  ),
                  SizedBox(width: 10),
                  // Add phone number input field
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Enter phone number',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add logic to verify phone number
                  // For simplicity, navigate to the Home page
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
                child: Text('Verify'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
