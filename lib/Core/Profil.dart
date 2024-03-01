import 'package:flutter/material.dart';
import 'package:voyage/Core/EditProfil.dart';
import 'package:voyage/Core/settings.dart';
import 'ChangePassword.dart';
import 'help.dart';
import 'package:voyage/Core/inviteFriends.dart';
import 'notificationPage.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'User',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 300),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfil()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/nourImage.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.blue[900]),
            title: Text('Notifications'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.lock, color: Colors.blue[900]),
            title: Text('Change Password'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePasswordPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_add, color: Colors.blue[900]),
            title: Text('Invite Friend'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InviteFriendPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: Colors.blue[900]),
            title: Text('Help Center'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HelpPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue[900]),
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          // Ajouter une nouvelle tuile pour les notifications
        ],
      ),
    );
  }
}
