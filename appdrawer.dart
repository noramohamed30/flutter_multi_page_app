import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // Helper method to build a list tile for navigation
  Widget _buildListTile(BuildContext context, String title, IconData icon, String routeName) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).primaryColor),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
      onTap: () {
        // Close the drawer first
        Navigator.pop(context); 
        // Use pushNamedAndRemoveUntil to navigate and clear the stack, 
        // ensuring only the target page remains, or is brought to the top.
        Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => route.isFirst);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          // Drawer Header
          AppBar(
            title: const Text('Navigation'),
            automaticallyImplyLeading: false, // Ensures the back button isn't shown in the header
          ),
          // Navigation options
          _buildListTile(context, 'Home', Icons.home, '/'),
          const Divider(),
          _buildListTile(context, 'About', Icons.info_outline, '/about'),
          const Divider(),
          _buildListTile(context, 'Contact', Icons.mail_outline, '/contact'),
          const Divider(),
        ],
      ),
    );
  }
}