import 'package:_tiktok_clone_app/controllers/auth_controller.dart';
import 'package:_tiktok_clone_app/views/screens/add_video_screen.dart';
import 'package:_tiktok_clone_app/views/screens/video_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

//PAGES
const pages = [
  VideoScreen(),
  Text("Search Screen"),
  AddVideoScreen(),
  Text("Message Screen"),
  Text("Profile Screen")
];
//COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//FIREBASE
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//CONTROLLER
var authController = AuthController.instance;
