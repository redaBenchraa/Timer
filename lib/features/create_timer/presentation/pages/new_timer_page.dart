import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text("Name"),
          trailing: Text("Untiteled"),
        ),
        const ListTile(
          title: Text("Number of sets"),
          trailing: Text("4"),
        ),
        const ListTile(
          title: Text("Number of reps per set"),
          trailing: Text("4"),
        ),
        const ListTile(
          title: Text("Repitition duration"),
          trailing: Text("30 seconds"),
        ),
        const ListTile(
          title: Text("Break between reps"),
          trailing: Text("10 seconds"),
        ),
        const ListTile(
          title: Text("Break between sets"),
          trailing: Text("1 minutes"),
        ),
      ],
    );
  }
}
