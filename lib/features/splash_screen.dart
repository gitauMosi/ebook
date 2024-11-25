import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
           Image.asset("assets/images/logo.png", width: 100, height: 100,),
           
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Erabook"),
           )
          ],
        ),
      ),
    );
  }
}