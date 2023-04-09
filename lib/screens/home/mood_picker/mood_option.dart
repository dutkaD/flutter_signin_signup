import 'package:flutter/material.dart';

class MoodOption extends StatelessWidget {
  const MoodOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.yellow,
      ),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            opacity: 0.2,
            image: AssetImage("assets/content.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
