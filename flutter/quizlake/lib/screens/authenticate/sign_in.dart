import "package:flutter/material.dart";
import 'package:quizlake/service/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _authInstance = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[800],
        title: Center(
          child: Text(
            "QuizLake",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(),
          child: ElevatedButton(
              onPressed: () async {
                dynamic result = await _authInstance.signInAnon();
                if (result == null) {
                  print("Error signing-in");
                } else {
                  print("Signed In");
                  print(result);
                }
              },
              child: Text("Sign-In Anonymously")),
        ),
      ),
    );
  }
}
