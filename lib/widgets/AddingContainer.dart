import 'package:basketball_app/constants.dart';
import 'package:flutter/material.dart';

class Addingcontainer extends StatelessWidget {
  const Addingcontainer({super.key, required this.text, required this.onpress});
  final String text ;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        width: 175,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: KprimaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset:  Offset(2, 2),
              blurRadius: 5
            )
            
          ]
        ),
        child: Text(text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w800
        ),),
      ),
    );
  }
}