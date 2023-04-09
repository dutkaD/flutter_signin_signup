

import 'package:flutter/cupertino.dart';

import '../../common/app_localisations.dart';
import '../../common/forms/text_field_rounded.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);


    return Padding(
      padding: const EdgeInsets.all(8.0),
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

        ],
      ),
    );
  }
}
