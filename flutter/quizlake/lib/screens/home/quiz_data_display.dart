import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quizlake/service/database.dart';

class QuizDisplay extends StatefulWidget {
  const QuizDisplay({super.key});

  @override
  State<QuizDisplay> createState() => _QuizDisplayState();
}

class _QuizDisplayState extends State<QuizDisplay> {
  DatabaseService _databaseInstance = new DatabaseService();
  Stream quizstream = Stream.empty();
  Widget quizList() {
    return Container(
      child: StreamBuilder(
          stream: quizstream,
          builder: ((context, AsyncSnapshot snapshot) {
            return snapshot.data == null
                ? Container()
                : ListView.builder(
                    itemCount: snapshot.data.documents.length,
                    itemBuilder: ((context, index) {
                      return QuizTile(
                          desc: snapshot
                              .data.documents[index].data["quizDescription"],
                          title:
                              snapshot.data.documents[index].data["quizTitle"]);
                    }));
          })),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    _databaseInstance.GetQuizData().then((value) {
      setState(() {
        quizstream = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: quizList(),
    );
  }
}

class QuizTile extends StatelessWidget {
  // const QuizTile({super.key});
  final String title;
  final String desc;
  QuizTile({required this.desc, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(
              "https://4kwallpapers.com/images/walls/thumbs_3t/8324.png"),
          Container(
            child: Column(
              children: [Text(title), Text(desc)],
            ),
          )
        ],
      ),
    );
  }
}
