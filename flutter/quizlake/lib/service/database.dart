import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import "package:firebase_auth/firebase_auth.dart";

class DatabaseService {
  // upload quizData

  Future addQuizData(Map<String, dynamic> quizData, String quizId) async {
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("User")
        .doc(uid)
        .collection("Quiz")
        .doc(quizId)
        .set(quizData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future addQuestionData(
      Map<String, dynamic> questionData, String quizId) async {
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("User")
        .doc(uid)
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
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("User")
        .doc(uid)
        .collection("Room")
        .doc(roomID)
        .set(roomData)
        .catchError((e) {
      print(e.toString());
    });

    await FirebaseFirestore.instance
        .collection("Room")
        .doc(roomID)
        .set(roomData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future JoinRoom(Map<String, dynamic> userData, String roomID) async {
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    await FirebaseFirestore.instance
        .collection("Room")
        .doc(roomID)
        .collection("Players")
        .add(userData)
        .catchError((e) {
      print(e.toString());
    });
  }

  Future GetQuizData(String roomID) async {
    final String uid = FirebaseAuth.instance.currentUser!.uid;
    return await FirebaseFirestore.instance
        .collection("User")
        .doc(roomID)
        .collection("Quiz")
        .snapshots();
  }
}
