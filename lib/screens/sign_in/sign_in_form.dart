import 'package:flutter/cupertino.dart';
import 'package:login_app/common/app_localisations.dart';

import '../../common/forms/text_field_rounded.dart';
import '../../common/rounded_button.dart';

class SignInForm extends StatefulWidget {
  final Function onSignIn;

  const SignInForm({Key? key, required this.onSignIn}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              TextFieldRounded(
                hintText: locals?.emailFormLabel ?? "Email",
                validate: (String value) {
                  if (!value.contains("@") || value.length < 3) {
                    return locals?.emailMalformedError ?? "Email is not correct";
                  }
                },
                onChanged: (String value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFieldRounded(
                hintText: locals?.passwordFormLabel ?? "Password",
                hideText: true,
                validate: (String value) {
                  if (value.length < 6) {
                    return locals?.passwordNotGoodError ?? "Password too short";
                  }
                },
                onChanged: (String value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              RoundedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.onSignIn();
                  }
                },
                label: locals?.signInButtonLabel ?? "Sign in",
              )
            ],
          )
        ],
      ),
    );
  }
}
