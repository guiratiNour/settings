import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Définir la couleur de fond en blanc
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Help',
          style: TextStyle(color: Colors.blue[900]),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.blue[900]),
            onPressed: () {
              // Action à effectuer lors du clic sur l'icône de recherche
              // Par exemple : Naviguer vers une autre page de recherche
            },
          ),
        ],
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(right: 60.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Vous pouvez effectuer une action en fonction de la valeur de recherche ici si nécessaire
                },
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(context, 'Authentication and User Profile'),
            _buildBulletPoint(
                'To access all features, please create a user account.'),
            _buildBulletPoint(
                'You can securely log in using your existing credentials.'),
            _buildBulletPoint(
                'Manage your profile details, update personal information, and change your password.'),
            _buildSectionTitle(context, 'Accommodation Search'),
            _buildBulletPoint(
                'Use the search bar to find accommodations by city or country.'),
            _buildBulletPoint(
                'Apply filters to refine search results based on accommodation type, price, and ratings.'),
            _buildSectionTitle(context, 'Accommodation Listing'),
            _buildBulletPoint(
                'View search results with detailed information about each accommodation, including images, price, and ratings.'),
            _buildBulletPoint(
                'Check availability of rooms, apartments, houses, or residences for selected dates.'),
            _buildSectionTitle(context, 'Booking'),
            _buildBulletPoint(
                'Select accommodation type and additional options for booking.'),
            _buildBulletPoint(
                'The booking process is straightforward, with the option to add multiple accommodations if needed.'),
            _buildBulletPoint(
                'Integration of a secure online payment system ensures safe transactions.'),
            _buildSectionTitle(context, 'Location and Maps'),
            _buildBulletPoint(
                'Explore interactive maps to view the locations of different accommodations.'),
            _buildBulletPoint(
                'Use the location feature to discover accommodations nearby.'),
            _buildSectionTitle(context, 'Reviews and Ratings'),
            _buildBulletPoint(
                'Read reviews and ratings from other users about accommodations.'),
            _buildBulletPoint(
                'Find detailed reviews on each accommodation\'s page.'),
            _buildSectionTitle(context, 'Statistics and Recommendations'),
            _buildBulletPoint(
                'Track reservations and collect data for insights.'),
            _buildBulletPoint(
                'View statistics on popular accommodations and top-rated listings.'),
            _buildBulletPoint(
                'Receive personalized recommendations based on your preferences.'),
            _buildSectionTitle(context, 'Notifications'),
            _buildBulletPoint(
                'Stay informed with notifications confirming bookings and special offers.'),
            SizedBox(height: 20), // Espacement pour l'image
            Center(
              child: Image.asset(
                'assets/images/question.jpg',
                width: 300, // Largeur de l'image
                height: 200, // Hauteur de l'image
                fit: BoxFit
                    .cover, // Ajustement de l'image pour remplir le conteneur
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue[900],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 8.0,
            height: 8.0,
            child: CircleAvatar(
              backgroundColor: Colors.blue[900],
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HelpPage(),
  ));
}
