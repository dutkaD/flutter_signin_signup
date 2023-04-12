import 'package:flutter/material.dart';
import 'package:login_app/screens/home/treats_overview/treat_overview_tile.dart';

import '../../../common/app_localisations.dart';

class TreatsOverview extends StatelessWidget {
  const TreatsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locals = getAppLocalizations(context);


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TreatOverviewTile(
                headerText: 'Monthly treats',
                mainText: "Let's add a monthly treats",
                onButtonClicked: (){},
              ),
            ),
            Expanded(
              child: TreatOverviewTile(
                headerText: 'Yearly treats',
                mainText: "Let's a yearly treat",
                onButtonClicked: (){},
              ),
            )
          ],
        ),
      ),
    );
  }
}
