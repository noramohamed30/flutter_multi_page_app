import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      // Drawer Menu
      drawer: const AppDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Task 3: Display page name
              const Text(
                'This is the About Page',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              const SizedBox(height: 30),

              // Task 6: Add an Icon widget
              const Icon(
                Icons.person_pin_circle,
                size: 80,
                color: Colors.deepPurpleAccent,
              ),
              const SizedBox(height: 40),

              // Task 2: Button to navigate to the Contact Page
              ElevatedButton(
                onPressed: () {
                  // Navigate using the named route
                  Navigator.pushNamed(context, '/contact');
                },
                child: const Text(
                  'Go to Contact Page',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}