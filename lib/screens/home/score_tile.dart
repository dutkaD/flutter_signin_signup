import 'package:flutter/material.dart';

class ScoreTile extends StatelessWidget {
  const ScoreTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "My score",
        ),
        Text("10 *"),
        Text("see history")
      ],
    );
  }
}
