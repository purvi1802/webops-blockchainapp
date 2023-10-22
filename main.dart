import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
    );
  }
}

class Screen extends StatefulWidget {
  @override
  ScreenState createState() => ScreenState();
}

class ScreenState extends State<Screen> {
  List<Color> colorPalette = [];

  void generate() {
    final random = Random();
    colorPalette.clear();
    for (int i = 0; i < 5; i++) {
      colorPalette.add(
        Color.fromRGBO(
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
          1.0,
        ),
      );
    }
    setState(() {}); // Trigger a rebuild to show the new colors.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Palette App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the GridView
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                itemCount: colorPalette.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: colorPalette[index],
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(5),
                  );
                },
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the button
              child: ElevatedButton(
                onPressed: generate,
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[600],
                ),
                child: Text('click'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




   