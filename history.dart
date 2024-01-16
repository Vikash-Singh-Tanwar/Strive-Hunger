import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> cookedList;
  final List<Map<String, dynamic>> uncookedList;
  final List<Map<String, dynamic>> fruitsAndVegList;
  final List<Map<String, dynamic>> othersList;

  HistoryPage({
    required this.cookedList,
    required this.uncookedList,
    required this.fruitsAndVegList,
    required this.othersList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          _buildSection('Cooked', cookedList),
          _buildSection('Uncooked', uncookedList),
          _buildSection('Fruits and Veggies', fruitsAndVegList),
          _buildSection('Others', othersList),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Map<String, dynamic>> dataList) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          for (var data in dataList)
            _buildItem(data['personName'], data['itemName'], data['location'],
                data['quantity']),
        ],
      ),
    );
  }

  Widget _buildItem(
      String personName, String itemName, String location, int quantity) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Person Name: $personName'),
          Text('Item Name: $itemName'),
          Text('Location: $location'),
          Text('Quantity: $quantity'),
        ],
      ),
    );
  }
}
