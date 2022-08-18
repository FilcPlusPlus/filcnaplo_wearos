// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class GradeCard extends StatelessWidget {
  const GradeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.amber),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.calculate_rounded),
          Text(
            "5",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
