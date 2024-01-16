import 'package:flutter/material.dart';
import 'history.dart';

class SavePage extends StatelessWidget {
  final String personName;
  final String itemName;
  final String location;
  final int quantity;

  SavePage({
    required this.personName,
    required this.itemName,
    required this.location,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    // Assuming you have lists for cooked, uncooked, fruitsAndVeg, and others
    List<Map<String, dynamic>> cookedList = [
      {
        'personName': personName,
        'itemName': itemName,
        'location': location,
        'quantity': quantity
      },
      // Add more cooked data as needed
    ];

    List<Map<String, dynamic>> uncookedList = [
      // Similar to cookedList, add uncooked data
    ];

    List<Map<String, dynamic>> fruitsAndVegList = [
      // Similar to cookedList, add fruitsAndVeg data
    ];

    List<Map<String, dynamic>> othersList = [
      // Similar to cookedList, add others data
    ];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HistoryPage(
          cookedList: cookedList,
          uncookedList: uncookedList,
          fruitsAndVegList: fruitsAndVegList,
          othersList: othersList,
        ),
      ),
    );

    return Container(); // Placeholder widget, replace with your actual UI
  }
}
