// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String name;
  Function() function;
  Color color;
  String? icon;
  CustomButton({
    super.key,
    required this.name,
    required this.function,
    required this.color,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(icon != null)
            Image.asset(icon!),


            Text(name),

          ],
        ),
      ),
    );
  }
}
