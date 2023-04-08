import 'package:flutter/material.dart';
import 'package:login_app/screens/auth_screen.dart';
import 'package:login_app/screens/sign_up/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  final Function onToggle;

  const SignUpScreen({Key? key, required this.onToggle}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthScreen(
        toggleLabel: "I already have an account",
        headerText: "Create a new user",
        backgroundImage: const AssetImage('assets/flowers_red.png'),
        form: const SignUpForm(),
        onToggle: widget.onToggle);
  }
}
