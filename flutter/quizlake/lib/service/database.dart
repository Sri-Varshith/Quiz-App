import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // upload quizData

  Future addQuizData(Map<String, dynamic> quizData, String quizId) async {
    await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .set(quizData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future addQuestionData(
      Map<String, dynamic> questionData, String quizId) async {
    await FirebaseFirestore.instance
        .collection("Quiz")
        .doc(quizId)
        .collection("MCQs")
        .add(questionData)
        .catchError((e) {
      print(e.toString());
    });
  }

  // create room the admin publishes quiz
  Future CreateRoom(Map<String, dynamic> roomData, String roomID) async {
    await FirebaseFirestore.instance
        .collection("Room")
        .doc(roomID)
        .set(roomData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future JoinRoom(Map<String, dynamic> userData, String roomID) async {
    await FirebaseFirestore.instance
        .collection("Room")
        .doc(roomID)
        .collection("Users")
        .add(userData)
        .catchError((e) {
      print(e.toString());
    });
  }
}
