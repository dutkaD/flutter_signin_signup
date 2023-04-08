import 'package:flutter/material.dart';
import 'package:login_app/screens/auth_screen.dart';
import 'package:login_app/screens/sign_in/sign_in_form.dart';

const gap = SizedBox(
  height: 10,
);

class SignInScreen extends StatefulWidget {
  final Function onToggle;

  const SignInScreen({Key? key, required this.onToggle}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthScreen(
      backgroundImage: const AssetImage('assets/flowers.png'),
      form: const SignInForm(),
      onToggle: widget.onToggle,
      headerText: 'Sign in',
      toggleLabel: 'Create a new user',
    );
  }
}
