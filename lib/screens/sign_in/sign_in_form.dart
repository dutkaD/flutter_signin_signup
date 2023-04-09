import 'package:flutter/cupertino.dart';
import 'package:login_app/common/app_localisations.dart';

import '../../common/forms/text_field_rounded.dart';
import '../../common/rounded_button.dart';

class SignInForm extends StatefulWidget {
  final Function onSignUp;

  const SignInForm({Key? key, required this.onSignUp}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

const headerStyle = TextStyle(
  fontSize: 23,
  fontWeight: FontWeight.bold,
  color: Color.fromRGBO(104, 65, 0, 1.0),
);

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
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
              onPressed: widget.onSignUp,
              label: locals?.signInButtonLabel ?? "Sign in",
            )
          ],
        )
      ],
    );
  }
}
