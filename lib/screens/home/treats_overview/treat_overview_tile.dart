import 'package:flutter/material.dart';
import 'package:login_app/common/rounded_button.dart';

class TreatOverviewTile extends StatelessWidget {
  final String headerText;
  final String mainText;
  final Function onButtonClicked;

  const TreatOverviewTile(
      {Key? key,
      required this.headerText,
      required this.mainText,
      required this.onButtonClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    headerText,
                    style: const TextStyle(fontWeight: FontWeight.bold),

                  ),
                  Text(
                    mainText,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              RoundedButton(onPressed: () {}, label: "+")
            ],
          )),
    );
  }
}
