import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/firestore/listeners.dart';
import '../../../firestore/model/treat.dart';

class EventList extends StatefulWidget {
  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  final Stream<QuerySnapshot> _usersStream = streamEvents();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text(snapshot.connectionState.name);
        }
        return SizedBox(
          height: 300,
          child: ListView(
            shrinkWrap: true,
            children: snapshot.data!.docs
                .map((DocumentSnapshot document) {
                  TreatDto data = TreatDto.fromResponse(
                      document.id, document.data()! as Map<String, dynamic>);
                  return ListTile(
                    title: Text(data.title),
                    subtitle: Text(data.id ?? ""),
                  );
                })
                .toList()
                .cast(),
          ),
        );
      },
    );
  }
}
