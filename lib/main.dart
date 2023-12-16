import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Icon",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.black54,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.local_airport_outlined,
                color: Colors.brown,
                size: 70.0,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Your logic here when the button is pressed
                  print("Button Clicked!");
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.brown),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  // Set the background color to brown and text color to white
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.mail),
                    const SizedBox(width: 8.0),
                    const Text('Click me'),
                    IconButton(
                      onPressed: () {
                        print("IconButton Clicked!");
                      },
                      icon: Icon(Icons.mail),
                      color: Colors.black,
                      iconSize: 28.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
