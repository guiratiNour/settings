import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: Color.fromARGB(255, 246, 247, 248),
      ),
      backgroundColor: Colors.white, // Définir le fond blanc ici
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: Center(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              '''
Your privacy is important to us. It is our policy to respect your privacy regarding any information we may collect while operating our application.

1. Information We Collect:
   - Personal Information: When you create an account or make a reservation, we may collect personal information such as your name, email address, and payment details.
   - Usage Information: We may collect information about how you interact with our application, such as the pages you visit and the actions you take.
   - Location Information: With your consent, we may collect location information to provide location-based services, such as finding accommodations nearby.
   
2. How We Use Your Information:
   - Provide Services: We use your information to provide the services you request, such as making reservations and processing payments.
   - Improve User Experience: We may use your information to personalize your experience, improve our services, and develop new features.
   - Communicate with You: We may send you notifications, updates, and promotional materials based on your preferences.
   
3. Data Security:
   - We take appropriate measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction.
   
4. Third-party Services:
   - Our application may contain links to third-party websites or services that are not owned or controlled by us. We are not responsible for the privacy practices or content of these third-party sites.
   
5. Changes to This Privacy Policy:
   - We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.
   
6. Contact Us:
   - If you have any questions or concerns about our Privacy Policy or practices, please contact us at support@example.com.

By using our application, you agree to the collection and use of information in accordance with this Privacy Policy.
              ''',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
