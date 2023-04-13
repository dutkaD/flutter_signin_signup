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
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TreatOverviewTile(
                  headerText: locals?.treatsYearlyLabel ?? 'Monthly treats',
                  mainText: locals?.treatsYearlyLetsAdd ?? "Let's add a monthly treats",
                  onButtonClicked: (){},
                ),
              ),
              Expanded(
                child: TreatOverviewTile(
                  headerText: locals?.treatsMonthlyLabel ?? 'Yearly treats',
                  mainText: locals?.treatsMonthlyLetsAdd ?? "Let's a yearly treat",
                  onButtonClicked: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
