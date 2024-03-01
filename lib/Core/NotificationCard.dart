import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Key key;
  final String title;
  final String description;
  final Color titleColor;
  final Color subtitleColor;
  final String date; // Ajout du paramètre date

  const NotificationCard({
    required this.key,
    required this.title,
    required this.description,
    required this.titleColor,
    required this.subtitleColor,
    required this.date, // Ajout du paramètre date
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: subtitleColor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Date: $date', // Affichage de la date
              style: TextStyle(
                fontSize: 14,
                color: subtitleColor,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
