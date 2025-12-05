import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use a Stack to layer widgets on top of each other
      body: Stack(
        fit: StackFit.expand, // Make the children of the Stack fill the screen
        children: <Widget>[
          // 1. The background image (bottom layer)
          Image.network(
            "https://img.freepik.com/premium-photo/abstract-geometric-background-with-pink-blue-gradient-futuristic-background-with-figures-technological-fashion-concept_494516-2021.jpg",
            fit: BoxFit.cover, // Ensure the image covers the whole screen
          ),

          // 2. The content centered on top of the image (top layer)
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // App Icon
                  const Icon(
                    Icons.flutter_dash,
                    size: 120,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 24),

                  // Welcome Title with a shadow for better readability
                  const Text(
                    'Welcome to Flutter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(blurRadius: 10.0, color: Colors.black54),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Subtitle Text with a shadow
                  Text(
                    'Let\'s build something amazing together!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.9),
                      shadows: const [
                        Shadow(blurRadius: 8.0, color: Colors.black54),
                      ],
                    ),
                  ),
                  const SizedBox(height: 48),

                  // Get Started Button
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to the next page (e.g., home or login)
                      print("Get Started button pressed!");
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue.shade700, // Text color
                      backgroundColor: Colors.white, // Button background color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
