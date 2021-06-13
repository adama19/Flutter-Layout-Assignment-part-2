import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GridClassPage2 extends StatefulWidget {
  @override
  _GridClassPage2State createState() => _GridClassPage2State();
}

var textIndex = 0;
bool value = true;

class _GridClassPage2State extends State<GridClassPage2> {
  void iconPressed1() {
    setState(() {
      textIndex = textIndex + 1;
      value = false;
      print('Icon pressed $textIndex');
    });
  }

  var actionsTaken = [' OFF ', 'ON'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Image(
                              image: AssetImage(value
                                  ? 'assets/ceiling-fan.png'
                                  : 'assets/fan2.jpg'),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: 92,
                            child: TextButton(
                              child: Icon(Icons.power_settings_new, size: 40),
                              onPressed: iconPressed1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                              child: Text(
                            " FAN",
                            style: TextStyle(fontSize: 30),
                            textAlign: TextAlign.left,
                          )),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              actionsTaken.elementAt(textIndex),
                              style: TextStyle(fontSize: 30),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
