import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.color}) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    Colors.accents;
    return Container(
      height: 100,
      color: color,
      margin: EdgeInsets.only(bottom: 10),
    );
  }
}
