import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: "Welcome to"
              ),
              TextSpan(
                text: "Erabook"
              )
            ]
          )),
          Text("The Number OneEbook Store & \n Reader Application in this Century")
        ],
      ),
    );
  }
}