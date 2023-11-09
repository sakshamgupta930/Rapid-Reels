import 'package:flutter/material.dart';
import 'package:rapid_reels/controller/authController.dart';
import 'package:rapid_reels/view/widgets/glitch.dart';
import 'package:rapid_reels/view/widgets/textInput.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();
    TextEditingController _usernameController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GlithEffect(
                child: const Text(
                  'Welcome to Shortzy',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              InkWell(
                onTap: () {
                  AuthController.instance.pickImage();
                },
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg',
                      ),
                      radius: 60,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
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
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _confirmPasswordController,
                  myIcon: Icons.lock,
                  myLabelText: 'Confirm Password',
                  toHide: true,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _usernameController,
                  myIcon: Icons.person,
                  myLabelText: 'Username',
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.sizeOf(context).width - 50,
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: ElevatedButton(
                  onPressed: () {
                    AuthController().SignUp(
                      _usernameController.text,
                      _emailController.text,
                      _passwordController.text,
                      AuthController.instance.proImg,
                    );
                  },
                  child: const Text("SignUp"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
