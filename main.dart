import 'dart:math'; // Import the math library for generating random numbers.
import 'package:flutter/material.dart';

void main() {
  runApp(App()); // Run the Flutter app by starting with the App widget.
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(), // Set the home screen to the Screen widget.
    );
  }
}

class Screen extends StatefulWidget {
  @override
  ScreenState createState() => ScreenState(); // Create the state for the Screen widget.
}

class ScreenState extends State<Screen> {
  List<Color> colorPalette = []; // Initialize an empty list to hold colors.

  void generate() {
    final random = Random(); // Create a random number generator.
    colorPalette.clear(); // Clear the colorPalette list.
    for (int i = 0; i < 5; i++) {
      // Generate 5 random colors and add them to the list.
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
        title: Text('Color Palette App'), // Set the title of the app bar.
        centerTitle: true, // Center the title in the app bar.
        backgroundColor: Colors.red[600], // Set the background color of the app bar.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the GridView.
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                ),
                itemCount: colorPalette.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    color: colorPalette[index],
                    width: 50, // Adjust the width of color boxes as needed.
                    height: 50, // Adjust the height of color boxes as needed.
                    margin: EdgeInsets.all(5), // Add margin for spacing.
                  );
                },
              ),
            ),
            SizedBox(height: 20.0), // Adjust the height of the space.
            Padding(
              padding: EdgeInsets.all(16.0), // Add padding around the button.
              child: ElevatedButton(
                onPressed: generate,
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[600], // Set the button's background color.
                ),
                child: Text('click'), // Improved button text.
              ),
            ),
          ],
        ),
      ),
    );
  }
}





   
