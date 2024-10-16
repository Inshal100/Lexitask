import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lexitask_app/home_screen.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.jpeg', height: 300, width: 300),
            Text(
              "Loading",
              style: TextStyle(fontSize: 30),
            ),
            TweenAnimationBuilder<Color?>(
              tween: ColorTween(begin: Colors.blue, end: Colors.red),
              duration: Duration(seconds: 2),
              builder: (context, color, child) {
                return CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(color!),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
