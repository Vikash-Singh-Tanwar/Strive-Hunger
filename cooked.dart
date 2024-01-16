import 'package:flutter/material.dart';
import 'save.dart';

class CookedPage extends StatefulWidget {
  @override
  _CookedPageState createState() => _CookedPageState();
}

class _CookedPageState extends State<CookedPage> {
  String personName = "";
  String itemName = "";
  String location = "";
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cooked'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple,
              child: IconButton(
                icon: Icon(Icons.add_a_photo),
                onPressed: () {
                  // Add image upload logic here
                },
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Name of the Person'),
              onChanged: (value) {
                setState(() {
                  personName = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Name of the Item'),
              onChanged: (value) {
                setState(() {
                  itemName = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Location'),
              onChanged: (value) {
                setState(() {
                  location = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      quantity = quantity > 0 ? quantity - 1 : 0;
                    });
                  },
                ),
                Text('$quantity'),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity += 1;
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Share data and navigate to save.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SavePage(
                      personName: personName,
                      itemName: itemName,
                      location: location,
                      quantity: quantity,
                    ),
                  ),
                );
              },
              child: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
