import 'package:flutter/material.dart';

class PlayQuiz extends StatefulWidget {
  // const PlayQuiz({super.key});
  final String quizId;
  PlayQuiz({required this.quizId});

  @override
  State<PlayQuiz> createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  @override
  void initState() {
    // TODO: implement initState
    print(widget.quizId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
