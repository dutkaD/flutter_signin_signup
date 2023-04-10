

import 'package:flutter/cupertino.dart';

import '../../common/app_localisations.dart';
import '../../common/forms/text_field_rounded.dart';
import '../../common/rounded_button.dart';

class SignUpForm extends StatefulWidget {
  final Function onSignUp;

  const SignUpForm({Key? key, required this.onSignUp}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);


    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFieldRounded(
            hintText: locals?.nameFormLabel ?? "Name",
            onChanged: (String value) {
              print(value);
            },
          ),
          TextFieldRounded(
            hintText: locals?.emailFormLabel ?? "Email",
            onChanged: (String value) {
              print(value);
            },
          ),
          TextFieldRounded(
            hintText: locals?.passwordFormLabel ?? "Password",
            onChanged: (String value) {
              print(value);
            },
          ),
          RoundedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                widget.onSignUp();
              }
            },
            label: locals?.signInButtonLabel ?? "Sign in",
          )

        ],
      ),
    );
  }
}
