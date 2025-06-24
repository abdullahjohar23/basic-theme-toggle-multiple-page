import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
    // Private field
    bool _isDarkMode = false;

    // Getter to expose the dark mode state
    bool get isDarkMode => _isDarkMode;

    // Returns current theme mode based on the bool
    ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

    // Toggle the theme and notify listeners
    void toggleTheme() {
        _isDarkMode = !_isDarkMode;
        notifyListeners();
    }
}
