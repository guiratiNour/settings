import 'package:flutter/material.dart';

class StatistiquePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Dashboard', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('HOURLY'),
                Text('DAILY'),
                Text('WEEKLY'),
              ],
            ),
          ),
          Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset('assets/images/stat.jpg', fit: BoxFit.cover),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatBox(
                color: Colors.purple,
                label: 'Pageviews',
                value: '132,150',
              ),
              StatBox(
                color: Colors.blue,
                label: 'Comments',
                value: '15,643',
              ),
              StatBox(
                color: Colors.green,
                label: 'Likes',
                value: '65,050',
              ),
            ],
          ),
          SizedBox(height: 16),
          Text('Recent visitors'),
          Container(
            height: 200, // Changer la hauteur de 100 à 200
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset('assets/images/world.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}

class StatBox extends StatelessWidget {
  final Color color;
  final String label;
  final String value;

  StatBox({required this.color, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
