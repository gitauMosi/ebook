import 'package:ebook/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello there"),
          Text("Please enter your username, email and\n password to login"),

          TextField(
            decoration: InputDecoration(
              hintText: "UserName/ Email"
            ),
          ),

          TextField(
            keyboardType: TextInputType.text,
            
            decoration: InputDecoration(
              hintText: "Password",
              suffixIcon: Icon(Icons.visibility_off)
              
            ),
          ),

          Row(
            children: [
              Checkbox(value: false, onChanged: (value){}),
              Text("Remember me")
            ],
          ),
          Divider(),
          Align(
            alignment: Alignment.center,
            child: Text("Forgot your password"),
          ),
          Row(
            children: [
              Container(height: 10,),
              Text("or continue With"),
              Container(height: 10,)
            ],
          ),

          CustomButton(name: "Continue With Google", function: (){}, color: Colors.grey),
          CustomButton(name: "Continue With Apple", function: (){}, color: Colors.grey),
          CustomButton(name: "Continue With Faceboook", function: (){}, color: Colors.grey),
        ],
      ),
    );
  }
}