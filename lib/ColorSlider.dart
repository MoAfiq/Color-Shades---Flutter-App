import 'package:flutter/material.dart';

class ColorSlider extends StatefulWidget {
  const ColorSlider({Key? key, required this.width}) : super(key: key);

  //Creating slider width and assigning color
  final double width;

  @override
  State<StatefulWidget> createState() => _ColorSlider();
}

class _ColorSlider extends State<ColorSlider>{
  double _currentREDValue = 20;
  double _currentGREENValue = 20;
  double _currentBLUEValue = 20;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Slider'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Material(
        child: Column(
          children: [
             Container(
               padding: EdgeInsets.all(20),
               child: Text(
                  'Pick Your Color',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter',
                ),
            ),
             ),
            Slider(
              thumbColor: Colors.red,
              activeColor: Colors.red,
              inactiveColor: Colors.red[100],
              value: _currentREDValue,
              max: 255,
              label: _currentREDValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentREDValue = value;
                });
              },
            ),
            Slider(
              thumbColor: Colors.green,
              activeColor: Colors.green,
              inactiveColor: Colors.green[100],
              value: _currentGREENValue,
              max: 255,
              label: _currentGREENValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentGREENValue = value;
                });
              },
            ),
            Slider(
              thumbColor: Colors.blue,
              activeColor: Colors.blue,
              inactiveColor: Colors.blue[100],
              value: _currentBLUEValue,
              max: 255,
              label: _currentBLUEValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentBLUEValue = value;
                });
              },
            ),
            Container(
              width: 200.0,
              height: 200.0,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(_currentREDValue.round().toInt(), _currentGREENValue.round().toInt(), _currentBLUEValue.round().toInt(), 1),
                shape: BoxShape.circle,
              ),),

          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                      title: const Text('You have picked this color:'),
                      content: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: new BoxDecoration(
                            color: Color.fromRGBO(_currentREDValue.round().toInt(), _currentGREENValue.round().toInt(), _currentBLUEValue.round().toInt(), 1),
                            shape: BoxShape.circle,
                      ),
                      ),
                      actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                      ),
                      ]
              )
              );
            },
            child: Text(
                'Choose This Color',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                backgroundColor: Colors.amberAccent,
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
