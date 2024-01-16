import 'package:flutter/material.dart';
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
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/cooked': (context) => CookedPage(),
        '/uncooked': (context) => UncookedPage(),
        '/fruitsandveg': (context) => FruitsAndVegPage(),
        '/others': (context) => OthersPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strive'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: 1, // Black horizontal bar
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Image.network(
                    'https://rb.gy/zix786',
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  child: Image.network(
                    'https://rb.gy/zix786',
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  child: Image.network(
                    'https://rb.gy/zix786',
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  child: Image.network(
                    'https://rb.gy/zix786',
                    width: 60,
                    height: 60,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Types of Meal',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleContainer('Cooked', '/cooked'),
                    CircleContainer('Uncooked', '/uncooked'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleContainer('Fruits and Veggies', '/fruitsandveg'),
                    CircleContainer('Others', '/others'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleContainer extends StatelessWidget {
  final String label;
  final String route;

  CircleContainer(this.label, this.route);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.purple,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.network(
                'https://rb.gy/zix786',
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
