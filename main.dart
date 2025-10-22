import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Custom color theme bonus task implemented here
    return MaterialApp(
      title: 'Simple Multi-Page App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Set a custom primary color
        primarySwatch: Colors.deepPurple,
        // Set a custom background color for the Scaffold
        scaffoldBackgroundColor: Colors.deepPurple.shade50,
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      // Define named routes for easy navigation
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}