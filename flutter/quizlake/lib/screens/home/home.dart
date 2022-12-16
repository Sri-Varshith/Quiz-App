import 'package:flutter/material.dart';
import 'package:quizlake/service/auth.dart';

class Home extends StatelessWidget {
  // const Home({super.key});

  final AuthService _authInstance = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.deepPurple[800],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            label: Text('Logout'),
            onPressed: () async {
              await _authInstance.signingOut();
            },
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
