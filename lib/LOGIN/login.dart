import 'package:flutter/material.dart';
//import 'package:lexitask_app/screens/signin_screen.dart'; // Ensure you have this screen created
//import 'package:lexitask_app/screens/signup_screen.dart'; // Ensure you have this screen created
//import 'package:lexitask_app/screens/forgot_password_screen.dart';
//import 'package:lexitask_app/signin_screen.dart';
//import 'package:lexitask_app/signup_screen.dart';

//import 'forget_passsword_screen.dart';
import 'forgot_password_screen.dart';
import 'signin_screen.dart';
import 'signup_screen.dart'; // Create this screen for password recovery

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                );
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPasswordScreen(),
                  ),
                );
              },
              child: const Text('Forgot Password'),
            ),
          ],
        ),
      ),
    );
  }
}

