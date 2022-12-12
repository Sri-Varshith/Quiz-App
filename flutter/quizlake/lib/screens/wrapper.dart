import 'package:flutter/material.dart';
import 'package:quizlake/screens/authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // returns either home or authenticate
    return Authenticate();
  }
}
