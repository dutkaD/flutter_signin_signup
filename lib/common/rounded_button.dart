import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final Function onPressed;
  final String label;

  const RoundedButton({Key? key, required this.onPressed, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(label),
        ));
  }
}


class CircleButton extends StatelessWidget {
  final Widget child;
  final Function onTap;

  const CircleButton({Key? key, required this.child, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){onTap();},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: child,
    );
  }
}
