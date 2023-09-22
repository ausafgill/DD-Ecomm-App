import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.deepOrange,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/ausaf.jpg',
              ),
              radius: 30,
            ),
            title: Text(
              'Ausaf Gill',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('UserID: 12345'),
            tileColor: Colors.grey.shade300,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.deepOrange,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.deepOrange,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Contact US',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.error,
                  color: Colors.deepOrange,
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Complains',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
