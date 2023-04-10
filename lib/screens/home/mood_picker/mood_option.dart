import 'package:flutter/material.dart';
import 'package:login_app/style/style_variables.dart';

class MoodOption extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final Function onTap;
  final EdgeInsets? margin;

  const MoodOption({Key? key, required this.label, this.margin, this.height = 30.0, this.width = 40.0, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: margin ?? const EdgeInsets.symmetric(vertical: 2.0, horizontal: 3.0),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: dirtyGold,
        ),
        child: Center(
          child: Text(label,
          style: optionStyle,),
        ),
      ),
    );
  }
}
