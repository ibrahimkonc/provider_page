import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_page/ui/providers/counter_provider.dart';
import 'package:provider_page/ui/view/home_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ListenableProvider<CounterProvider>(create: (_) => CounterProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
