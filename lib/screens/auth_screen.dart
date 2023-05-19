import 'package:flutter/material.dart';
import '../style/style_variables.dart';

class AuthScreen extends StatelessWidget {
  final Function onToggle;
  final String headerText;
  final String toggleLabel;
  final AssetImage backgroundImage;
  final Widget form;

  const AuthScreen(
      {Key? key,
      required this.backgroundImage,
      required this.form,
      required this.onToggle,
      required this.headerText,
      required this.toggleLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(left: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: backgroundImage,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Text(headerText, style: headerStyle),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: form,
            ),
            const SizedBox(height: 60),
            GestureDetector(
              onTap: () {
                onToggle();
              },
              child: Text(
                toggleLabel,
                style: toggleLabelStyle,
              ),
            )
          ],
        )
      ]);
  }
}
