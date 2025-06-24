import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app_two/pages/home.dart';
import 'package:theme_app_two/pages/theme_notifier.dart';

void main() {
    runApp(
        ChangeNotifierProvider(
            create: (_) => ThemeNotifier(),
            child: const MyApp(),
        ),
    );
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        final themeNotifier = Provider.of<ThemeNotifier>(context);

        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Demo',
            themeMode: themeNotifier.currentTheme,
            
            theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: Colors.green,
                scaffoldBackgroundColor: Colors.green[50],
                useMaterial3: true,

                colorScheme: ColorScheme.light(
                    primary: Colors.green, // This controls Switch, FAB, etc.
                ),
                
                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.blueGrey, // bg of appbar in light mode
                    foregroundColor: Colors.white // text color in appbar in light mode
                ),
                
                textTheme: const TextTheme(
                    bodyMedium: TextStyle(color: Colors.blue),
                ),
            ),
            
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primaryColor: Colors.amber,
                scaffoldBackgroundColor: const Color.fromARGB(208, 44, 43, 43),
                useMaterial3: true,
                
                colorScheme: ColorScheme.dark(
                    primary: Colors.indigo, // bg color of switch and text color in dark theme
                ),

                appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.cyan, // bg of appbar in dark mode
                    foregroundColor: Colors.white, // text color in appbar in dark mode
                ),
                
                textTheme: const TextTheme(
                    bodyMedium: TextStyle(color: Colors.white),
                ),
            ),
            
            home: HomePage(),
        );
    }
}
