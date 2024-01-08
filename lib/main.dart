import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_demo/home_screen.dart';
import 'package:shimmer_demo/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
      ],
      child: const MaterialApp(
          title: 'Shimmer Demo App',
          home: HomeScreen()),
    );
  }
}
