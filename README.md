Overview

This Flutter project demonstrates a multi-page mobile application with a reusable navigation drawer and named route navigation. The app includes Home, About, and Contact pages, with consistent UI design, Material 3 support, and responsive layout. It highlights Flutter best practices, such as reusable widgets, clean code structure, and navigation management.

Features

Multi-Page Navigation: Navigate between Home, About, and Contact pages using named routes.

Reusable Drawer Widget: A custom navigation drawer accessible from all pages.

Responsive UI: Proper padding, centered content, and consistent spacing.

Interactive Widgets: Buttons for page navigation, images, and icons for visual enhancement.

Material 3 Support: Modern UI design with custom colors and theming.

Pages

Home Page

Displays a page title and an image.

Button to navigate to the About page.

Includes navigation drawer.

About Page

Displays a page title and an icon.

Button to navigate to the Contact page.

Includes navigation drawer.

Contact Page

Displays a page title.

Button to navigate back to the Home page.

Includes navigation drawer.

Project Structure
lib/
├── main.dart          # Entry point of the app
├── pages/
│   ├── home_page.dart
│   ├── about_page.dart
│   └── contact_page.dart
└── widgets/
    └── app_drawer.dart  # Reusable navigation drawer widget
