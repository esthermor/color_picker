import 'package:flutter/material.dart';
import 'package:navigationflutter/shades_page.dart';

class ShadesWithParams extends StatelessWidget {
  const ShadesWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;  //arguments can be anythg but we forced it to be materialaccentcolor

    return ShadesPage(color:data);
  }
}
