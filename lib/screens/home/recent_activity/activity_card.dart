import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final Widget icon;
  final String header;
  final String subheader;
  final Function onTap;

  const ActivityCard(
      {Key? key,
      required this.icon,
      required this.header,
      required this.subheader,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ListTile(
          leading: CircleAvatar(child: icon),
          title: Text(header),
          subtitle: Text(subheader),
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
