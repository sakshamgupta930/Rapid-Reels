import 'package:flutter/material.dart';
import 'package:rapid_reels/view/widgets/glitch.dart';
import 'package:rapid_reels/view/widgets/textInput.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlithEffect(
                child: const Text(
                  'Shortzy',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  myIcon: Icons.email,
                  myLabelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  myIcon: Icons.lock,
                  myLabelText: 'Password',
                  toHide: true,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.sizeOf(context).width - 50,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
