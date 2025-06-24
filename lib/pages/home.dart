import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_notifier.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'page_three.dart';

class HomePage extends StatelessWidget {
    const HomePage({super.key});

    @override
    Widget build(BuildContext context) {
        final themeNotifier = Provider.of<ThemeNotifier>(context);

        return Scaffold(
            appBar: AppBar(
                title: const Text('Home Page'),
            ),
            
            body: Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 20),
                child: Column(
                    children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                Switch(
                                    value: themeNotifier.isDarkMode,
                                    onChanged: (value) => themeNotifier.toggleTheme(),
                                    activeColor: Colors.blueAccent, // thumb color in dark mode
                                    activeTrackColor: Colors.pinkAccent, // bg color in dark mode
                                    inactiveThumbColor: Colors.redAccent, // thumb color in light mode
                                    inactiveTrackColor: Colors.amberAccent, // bg color in light mode
                                ),
                            ],
                        ),
                        
                        Column(
                            children: [
                                ElevatedButton(
                                    child: const Text('Go to Page One'),
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => const PageOne()),
                                    ),
                                ),
                                
                                SizedBox(height: 20),
                                
                                ElevatedButton(
                                    child: const Text('Go to Page Two'),
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => const PageTwo()),
                                    ),
                                ),
                                
                                SizedBox(height: 20),
                                
                                ElevatedButton(
                                    child: const Text('Go to Page Three'),
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (_) => const PageThree()),
                                    ),
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}
