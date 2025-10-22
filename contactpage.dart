import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
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
                'This is the Contact Page',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              const SizedBox(height: 40),

              // Button to go back to the home page (for a complete cycle)
              ElevatedButton.icon(
                onPressed: () {
                  // Pops all routes until the home route ('/') is reached
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                icon: const Icon(Icons.home),
                label: const Text(
                  'Back to Home',
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