import 'package:_tiktok_clone_app/constants.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  TextInputField(
      {super.key,
      required this.controller,
      required this.label,
      required this.icon,
      this.isObscure = false});
  TextEditingController controller;
  String label;
  IconData icon;
  bool isObscure;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(fontSize: 20),
        prefixIcon: Icon(icon),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: borderColor)),
      ),
      obscureText: isObscure,
    );
  }
}
