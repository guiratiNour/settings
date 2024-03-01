import 'package:flutter/material.dart';

class TermsOfServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms of Service'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Casavia - Plateforme Intuitive de Réservation d\'Hébergements',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Welcome to the Casavia - Plateforme Intuitive de Réservation d\'Hébergements (PIRH), your comprehensive solution for booking accommodations worldwide. Please read the following terms of service carefully before using our services.',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '1. Acceptance of Terms of Use',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'By using the Casavia - Plateforme Intuitive de Réservation d\'Hébergements, you agree to abide by these terms of use. If you do not agree to these terms, please do not use our service.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '2. User Account',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'a. Account Creation: To access certain features of our service, you will need to create a user account by providing accurate and up-to-date information. You are responsible for the security of your account and login credentials.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'b. Account Usage: You are solely responsible for activity that occurs on your account. You agree not to share your login credentials with third parties.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '3. Accommodation Booking',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'a. Booking Process: The booking process is simple and secure. Please ensure to provide correct information when booking. Online payment is required to confirm the booking.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'b. Booking Cancellation: Please refer to our cancellation policy for cancellation conditions and applicable fees.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '4. Service Modifications',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'We reserve the right to modify, suspend, or discontinue all or part of our services at any time, with or without notice.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              '5. Contact',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'If you have any questions regarding our terms of use, please contact us at the following address: support@casavia.com.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
