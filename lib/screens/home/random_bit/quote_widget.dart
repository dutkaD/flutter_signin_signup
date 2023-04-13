import 'package:flutter/cupertino.dart';

import '../../../common/app_localisations.dart';
import '../../../style/style_variables.dart';

class RandomQuote extends StatelessWidget {
  const RandomQuote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: dustyGold,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  height: 50,
                  image: AssetImage('assets/cat.png'),
                ),
                Flexible(
                    child: Text(
                  locals?.quoteNoTreatsYet ??
                      "Seems like you haven't planned any treats for you yet",
                  textAlign: TextAlign.center,
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
