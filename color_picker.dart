import 'package:flutter/material.dart';
import 'package:navigationflutter/main.dart';
import 'package:navigationflutter/shades_page.dart';
import 'colors.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  double _currentSliderRed = 20;
  double _currentSliderBlue = 20;
  double _currentSliderGreen = 20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Color Picker'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Slider(
            activeColor: Colors.red,
            inactiveColor: Colors.red[100],

            value:_currentSliderRed,
            min: 0,
            max: 255,
            divisions: 255,
            label: _currentSliderRed.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderRed = value;
              });
            },
          ),
          Slider(
            activeColor: Colors.blue,
            inactiveColor: Colors.blue[100],
            thumbColor: Colors.blue,
            value:_currentSliderBlue,
            max: 255,
            divisions: 255,
            label: _currentSliderBlue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderBlue = value;
              });
            },
          ),
          Slider(
            activeColor: Colors.green,
            inactiveColor: Colors.green[100],
            thumbColor: Colors.green,
            value:_currentSliderGreen,
            max: 255,
            divisions: 255,
            label: _currentSliderGreen.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderGreen = value;
              });
            },
          ),
          Container(
            margin: EdgeInsets.all(60),
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Color.fromRGBO(_currentSliderRed.toInt(), _currentSliderGreen.toInt(), _currentSliderBlue.toInt(), 1),
              shape: BoxShape.circle,
            ),
          )
        ],
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: Icon(Icons.add_a_photo),
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return MyHomePage();
              })),
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text ('Color:'),
                    content: Row(
            children: [
              const Text('The color you picked is :'),
              Container(
                margin: EdgeInsets.all(5),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(_currentSliderRed.toInt(), _currentSliderGreen.toInt(), _currentSliderBlue.toInt(), 1),
                  shape: BoxShape.circle,
                ),
              )
            ],
            ), actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Okay'),
                        child: const Text('Okay'),)
                    ],
                  )
              )
            },
          ),
        ],
      ),
    );
  }
}
