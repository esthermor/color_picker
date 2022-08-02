import 'package:flutter/material.dart';
import 'colors.dart';

class ShadesPage extends StatelessWidget {

  ShadesPage({required this.color});
  final MaterialAccentColor color;

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades= [   //Color is the class here
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: color,      // change the color of the appbar based on the color u chosed
          title: Text('Shade of ${color}')),
      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(color: accentShades.elementAt(index));
        },
      ),
    );
  }
}


