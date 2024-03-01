import 'package:flutter/material.dart';
import 'friend.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  List<Friend> friends = [
    Friend(
        name: 'Dorra',
        phoneNumber: '+123456789',
        imagePath: 'assets/images/avatar1.jpg'),
    Friend(
        name: 'Meryem',
        phoneNumber: '+987654321',
        imagePath: 'assets/images/avatar2.jpg'),
    Friend(
        name: 'Michael',
        phoneNumber: '+111222333',
        imagePath: 'assets/images/avatar3.jpg'),
    Friend(
        name: 'Alice',
        phoneNumber: '+444555666',
        imagePath: 'assets/images/avatar3.jpg'),
    Friend(
        name: 'Mayssa',
        phoneNumber: '+777888999',
        imagePath: 'assets/images/avatar4.jpg'),
    Friend(
        name: 'Samar',
        phoneNumber: '+777888999',
        imagePath: 'assets/images/avatar5.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invite Friends',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(friends[index].imagePath),
            ),
            title: Text(friends[index].name),
            subtitle: Text(friends[index].phoneNumber),
            trailing: Icon(
              friends[index].isSelected
                  ? Icons.check_circle
                  : Icons.check_circle_outline,
              color: friends[index].isSelected ? Colors.blue[900] : null,
            ),
            onTap: () {
              setState(() {
                friends[index].isSelected = !friends[index].isSelected;
              });
            },
          );
        },
      ),
    );
  }
}
