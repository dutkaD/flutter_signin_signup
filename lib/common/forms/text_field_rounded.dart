import 'package:flutter/material.dart';

import '../../style/style_variables.dart';


class TextFieldRounded extends StatelessWidget {
  final String hintText;
  final Function onChanged;
  final EdgeInsets? padding;

  const TextFieldRounded(
      {Key? key, required this.hintText, required this.onChanged, this.padding })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      child: TextField(
        onChanged: (String value) {
          onChanged(value);
        },
        style: textStyle,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: sandySand,
          contentPadding: const EdgeInsets.all(20),
          hintStyle: hintStyle,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          // prefixIcon: prefixIcon,
          // prefixIconColor: HexColor("#4f4f4f"),
          filled: true,
        ),
      ),
    );
  }
}
