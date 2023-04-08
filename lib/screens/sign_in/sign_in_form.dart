import 'package:flutter/cupertino.dart';

import '../../common/forms/text_field_rounded.dart';
import '../../common/rounded_button.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            TextFieldRounded(
              hintText: "Email",
              onChanged: (String value) {
                print(value);
              },
            ),
            TextFieldRounded(
              hintText: "Password",
              onChanged: (String value) {
                print(value);
              },
            ),
            RoundedButton(
              onPressed: () {},
              label: "Sign in",
            )
          ],
        )
      ],
    );
  }
}
