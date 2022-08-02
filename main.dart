import 'package:flutter/material.dart';
import 'package:navigationflutter/color_picker.dart';
import 'package:navigationflutter/shades_page.dart';
import 'package:navigationflutter/shades_with_params.dart';
import 'colors.dart';

// const accents = [100,200,400,700];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(

      ),
      home: const MyHomePage(),
      routes: {
        '/shades': (context) => const ShadesWithParams(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // void navigateShadePage(BuildContext context, MaterialAccentColor color,) {  //it will calls the widget  build in the buildcontext, refer below widget
  //   Navigator.of(context).push(
  //       MaterialPageRoute(
  //           builder: (BuildContext context) {  //build second page here, context is the parameter
  //         return ShadesPage(color: color,);  //navigator is going to push the material page route to the ShadesPage page
  //       }),
  //   );
  // }

  void navigateShadePageState(BuildContext context, MaterialAccentColor color,) {
   Navigator.pushNamed(    //same as navigateShadePage
     context,             // arguments of the navigator.push
     '/shades', //route name
     arguments: color,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors'),),
      body: ListView.builder(
        itemCount: Colors.accents.length, // always comes with .length
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
             navigateShadePageState(context, Colors.accents.elementAt(index));
            },
            child: ListItem(
              color: Colors.accents.elementAt(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add_to_photos_sharp),
        onPressed: () => {
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return ColorPicker();
    }))
        },
      ),
      );
  }
}
