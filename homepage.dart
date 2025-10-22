import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart'; // Import the reusable drawer

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      // Drawer Menu
      drawer: const AppDrawer(),
      body: Center(
        // Center widget for proper layout organization
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Task 3: Display page name
              const Text(
                'This is the Home Page',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              const SizedBox(height: 30), // Task 4: SizedBox for spacing

              // Task 5: Add one Image widget
              // Using a placeholder image from the network
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'https://picsum.photos/250/200?random=1', // Placeholder image
                  width: 250,
                  height: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image, color: Colors.red, size: 100);
                  },
                ),
              ),
              const SizedBox(height: 40),

              // Task 1: Button to navigate to the About Page
              ElevatedButton.icon(
                onPressed: () {
                  // Navigate using the named route
                  Navigator.pushNamed(context, '/about');
                },
                icon: const Icon(Icons.arrow_forward), 
                label: const Text(
                  'Go to About Page',
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