import 'dart:io';

import 'package:_tiktok_clone_app/constants.dart';
import 'package:_tiktok_clone_app/controllers/auth_controller.dart';
import 'package:_tiktok_clone_app/views/screens/auth_screen/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
              options: const FirebaseOptions(
                  apiKey: "AIzaSyCQYxqQx4-FJkGMcFEEm3PgRkqOE3wZtCg",
                  appId: "1:586001961067:android:dd9bad6a1cadfcc665a12e",
                  messagingSenderId: "586001961067",
                  projectId: "tiktok-clone-a59b4",
                  storageBucket: "tiktok-clone-a59b4.appspot.com"))
          .then((value) {
          Get.put(AuthController());
        })
      : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TikTokC',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: LoginScreen(),
    );
  }
}
