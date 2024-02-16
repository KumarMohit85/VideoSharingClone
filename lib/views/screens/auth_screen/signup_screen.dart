import 'package:_tiktok_clone_app/constants.dart';
import 'package:_tiktok_clone_app/views/widgets/text_input_field.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "TikTok Clone",
              style: TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900),
            ),
            const Text(
              "Register",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/thumbnails/009/383/461/small/man-face-clipart-design-illustration-free-png.png"),
                ),
                Positioned(
                  child: IconButton(
                    icon: Icon(Icons.add_a_photo),
                    onPressed: () => authController.pickImage(),
                  ),
                  bottom: -10,
                  left: 80,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                  controller: _usernameController,
                  label: "Username",
                  icon: Icons.person),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                  controller: _emailController,
                  label: "E-mail",
                  icon: Icons.mail),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passController,
                label: "Password",
                icon: Icons.lock,
                isObscure: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => authController.registerUser(
                  _usernameController.text,
                  _emailController.text,
                  _passController.text,
                  authController.profilePhoto),
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 50,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(fontSize: 20),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: buttonColor, fontSize: 20),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
