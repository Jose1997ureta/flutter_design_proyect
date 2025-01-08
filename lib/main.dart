import 'package:flutter/material.dart';
import 'presentation/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
