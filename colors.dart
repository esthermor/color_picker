import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Color color;

  const ListItem({required this.color});

  @override
  Widget build(BuildContext context) {

    return Container(  //all the properties of the color plate at here
      height: 80,
      color: color,
      margin: EdgeInsets.only(bottom: 15,left: 10, right: 10),
    );

  }
}
